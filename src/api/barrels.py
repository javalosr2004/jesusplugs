from fastapi import APIRouter, Depends
from pydantic import BaseModel
from src.api import auth
import sqlalchemy
from src import database as db
from src.models import inventory_ledger_table
import re
import random

# GLOBAL regex
barrel_re = re.compile("(\w+)_(\w+)_BARREL")
COLOR_THRESEHOLD = {
    "red_ml": 300,
    "blue_ml": 300,
    "green_ml": 5000,
    "dark_ml": 500
}

router = APIRouter(
    prefix="/barrels",
    tags=["barrels"],
    dependencies=[Depends(auth.get_api_key)],
)

class Barrel(BaseModel):
    sku: str

    ml_per_barrel: int
    potion_type: list[int]
    price: int

    quantity: int

#TODO: create Orders table to keep track of all orders???
@router.post("/deliver/{order_id}")
def post_deliver_barrels(barrels_delivered: list[Barrel], order_id: int):
    """ """
    mls_delivered = 0 
    total_cost = 0
    gold = 0
    change_vals = []
    if (len(barrels_delivered) == 0):
        raise("No barrels sent in API")
    with db.engine.begin() as connection:
        result = connection.execute(sqlalchemy.text(f"""
            SELECT SUM(change) 
            FROM inventory_ledger
            WHERE attribute = 'gold'
        """))

        if (not (gold := result.first()[0])):
            print("Server Error")
            return "NO"
        
        # check if potion exists???
        for barrel in barrels_delivered:
            print(barrel_re.match(barrel.sku))
            if (barrel.price < 0) or not (match := barrel_re.match(barrel.sku)):
                continue
            # assuming barrel exists
            mls_delivered = (barrel.quantity * barrel.ml_per_barrel)
            cost = barrel.quantity * barrel.price

            if (gold - total_cost) < cost:
                print("insufficient gold.")
                continue;

             # update gold
            total_cost += cost
            barrel_type = f"{match.group(2).lower()}_ml"
            change_vals.append(
            {"attribute": barrel_type, "change": mls_delivered, "reason": "barrel delivery"}
            )
            print("Recieved: ", barrel_type, " AMOUNT: ", mls_delivered)

        # update ML for db
        stmt = sqlalchemy.Insert(inventory_ledger_table).values(change_vals)
        connection.execute(stmt)

        # update gold that was recieved

        connection.execute(sqlalchemy.text(f"""
            INSERT INTO inventory_ledger (attribute, change, reason)
            VALUES ('gold', :change, :reason)
            """), {"change": (-1 * total_cost), "reason": 'barrel delivery'})

    print(f"barrels delievered: {barrels_delivered} order_id: {order_id}")

    return "OK"


# Gets called once a day
@router.post("/plan")
def get_wholesale_purchase_plan(wholesale_catalog: list[Barrel]):
    """ """
    # keep track of ml and potion count for each color
    color_potions = 0
    inventory = {}
    BASE_ML = 10000
    
    gold = 0

    # simple regex to get all available potions
    num_potion_re = re.compile("((?:\w+\s+)+)(?=potions?)")
    # keept track of what we want to purchase
    purchased = []
    # buy BARRELS of any color when we are short of said color and have sufficient money
    with db.engine.begin() as connection:
        result = connection.execute(sqlalchemy.text(f"""
            SELECT attribute, SUM(change) AS total
            FROM inventory_ledger
            GROUP BY attribute
        """))
        for row in result:
            inventory[row.attribute.strip()] = row.total

      
        result = connection.execute(sqlalchemy.text("SELECT (COALESCE(SUM(quantity), 0) * 10000) FROM capacity_ledger " +\
                                                    "WHERE barrel = TRUE AND delivered = TRUE "))
        ml_purchased = result.scalar_one_or_none()
        if (not ml_purchased):
            print("error parsing capacity")
            ml_purchased = 0
        print('capacity for barrels: ', ml_purchased)


        gold = inventory["gold"]
        total_ml = inventory.get("red_ml", 0) + inventory.get("green_ml", 0) + inventory.get("blue_ml", 0) + inventory.get("dark_ml", 0)
        total_cost = 0
        print("rankings:")
        rankings = rank_barrel_plan(wholesale_catalog, gold, BASE_ML + ml_purchased)

        print(rankings)
        # check respective barrels and how much they have
        # iterate throug barrel catalog, see if we need any of those colors
        empty_check = 0
        
        while (gold - total_cost) > (gold * .35) and (total_ml < (BASE_ML + ml_purchased)) and empty_check < 4:
            # get a random color
            empty_check = 0
            for i in random.sample(range(4), 4):
                color_barrels = rankings[i]
                if (len(color_barrels) == 0):
                    empty_check += 1
                    continue
                
                barrel = color_barrels.pop()[0]
                print("barrel ", barrel)
                # check if the number of ml we want for a given color is less than thresehold
                # purchase barrel
                if (BASE_ML + ml_purchased) < (total_ml + barrel.ml_per_barrel) or (gold - total_cost) <= (gold * .35):
                    break

                print(f"purchased {barrel.sku} at {barrel.price}")
                max_ml = ((((BASE_ML + ml_purchased) - total_ml)) // barrel.ml_per_barrel) * .25
                max_gold = (((gold - total_cost)) // barrel.price) * .25
                quantity = int(min(max_ml, max_gold, barrel.quantity))
                if quantity > 0:
                    purchased.append(
                        {
                            "sku": barrel.sku,
                            "quantity" : quantity
                        }
                    )
                    total_ml += barrel.ml_per_barrel * quantity
                    total_cost += barrel.price * quantity

                


    print(wholesale_catalog, purchased)
    return purchased

def get_color(potion_type: list[int]):
    if potion_type[0] == 1:
        return "RED"
    elif potion_type[1] == 1:
        return "GREEN"
    elif potion_type[2] == 1:
        return "BLUE"
    elif potion_type[3] == 1:
        return "DARK"
    return None

def get_index_potion_type(potion_type: list[int]):
    return potion_type.index(1)
# returns a nested list, default format: RED, GREEN, BLUE, DARK
# within each, is sorted ranking of colors, based on value and available gold
def rank_barrel_plan(barrels: list[Barrel], available_gold: int, available_space: int):   
    plans = [[], [], [], []]
    if available_space == 0:
        return
    for barrel in barrels:
        if barrel.price > available_gold or barrel.ml_per_barrel > available_space:
            continue
        plans[get_index_potion_type(barrel.potion_type)].append((barrel, barrel.price / barrel.ml_per_barrel ))
    
    return [sorted(plan, key=lambda x : x[1], reverse=True ) for plan in plans]
    
    


