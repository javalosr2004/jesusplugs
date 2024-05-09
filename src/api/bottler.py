from fastapi import APIRouter, Depends
from sqlalchemy.dialects.postgresql import Insert
from enum import Enum
from pydantic import BaseModel
from src.api import auth
import sqlalchemy
from src import database as db
from sqlalchemy import func
from src.api import catalog
from src.helper import potion_type_name,  idx_to_color
import re
from src.models import potions_table, inventory_ledger_table, potions_ledger_table, Wishlist, CapacityLedger
import math, random

# RED, GREEN, BLUE, DARK
POTION_THRESEHOLD = [0.25, 0.15, 0.20, 0.15]
class Color(Enum):
    red = 0
    green = 1
    blue = 2
    dark = 3


router = APIRouter(
    prefix="/bottler",
    tags=["bottler"],
    dependencies=[Depends(auth.get_api_key)],
)

class PotionInventory(BaseModel):
    potion_type: list[int]
    quantity: int

class Potion(BaseModel):
    potion_type: list[int]
    quantity: int
    exclude: bool

@router.post("/wishlist")
def add_to_wishlist(potions: list[Potion]):
    insert_val = []
    with db.engine.begin() as connection:
        for potion in potions:
            insert_val.append({
                "red": potion.potion_type[0],
                "green": potion.potion_type[1],
                "blue": potion.potion_type[2],
                "dark": potion.potion_type[3],
                "quantity": potion.quantity,
                "exclude": int(potion.exclude)
            })
        connection.execute(sqlalchemy.insert(Wishlist).values(insert_val))
    return "OK"



@router.patch("/wishlist")
def remove_from_wishlist(potions: list[Potion]):
    pass

@router.delete("/wishlist")
def clear_wishlist():
    pass

@router.post("/deliver/{order_id}")
def post_deliver_bottles(potions_delivered: list[PotionInventory], order_id: int):
    """ """
    # parsing all delivered potion to be accepted by param binding
    param_upsert = []
    potion_changes = []
    barrel_changes = []
    # keep track of all potion_types delivered and parse as JSON
    if (len(potions_delivered) == 0):
        return "OK"
    with db.engine.begin() as connection:
        

        # if potion is already in db, simply update value, else insert
        for delivery in potions_delivered:
            name = potion_type_name(delivery.potion_type)
            sku = name.lower().replace(" ", '_')[:19]
            param_upsert.append({
                "potion_sku": sku,
                "name": name,
                "red": delivery.potion_type[0], 
                "green": delivery.potion_type[1],
                "blue": delivery.potion_type[2],
                "dark": delivery.potion_type[3],
                })
            potion_changes.append({
                "potion_sku": sku,
                "change": delivery.quantity,
                "reason": "potion delivery"
            })

            # iterate through red, green, blue and dark in order to get 
            for idx in range(len(delivery.potion_type)):
                if delivery.potion_type[idx] != 0:
                    barrel_changes.append({
                        "attribute": idx_to_color(idx) + "_ml",
                        "change": -1 * delivery.potion_type[idx] * delivery.quantity,
                        "reason": "potion delivery"
                    })


        # upsertion
        stmt = Insert(potions_table).values(param_upsert).on_conflict_do_nothing()
        # upsert_stmt = stmt.on_conflict_do_update(
        #     index_elements=["potion_sku"],
        #     set_=dict({
        #         "potion_sku": stmt.excluded.potion_sku,
        #         "red": stmt.excluded.red,
        #         "green": stmt.excluded.green,
        #         "blue": stmt.excluded.blue,
        #         "dark": stmt.excluded.dark,
        #         "quantity": potions_table.c.quantity + stmt.excluded.quantity
        #     })
        # )

        # update db
        # insert into db if potion_sku doesn't exist
        connection.execute(stmt)

        # insert into potion ledger the new changes
        stmt = Insert(potions_ledger_table).values(potion_changes)
        connection.execute(stmt)

        # insert into inventoryledger the new changes
        stmt = Insert(inventory_ledger_table).values(barrel_changes)
        connection.execute(stmt)





    print(f"bottles delievered: {potions_delivered} order_id: {order_id}")

    return "OK"

@router.post("/plan")
def get_bottle_plan():
    """
    Go from bottle to bottle.
    """
    # keep track of our needs
    inventory = [0, 0, 0, 0]
    BASE_POTIONS = 50
    capacity_potions = BASE_POTIONS
    change_capacity = None
    change_inventory = [0, 0, 0, 0]
    needs = []
    total_potions = 0
    wishlist = []
    excluded = None

    # regex for bottles
    with db.engine.begin() as connection:
        # get chage in capacity
        stmt = sqlalchemy.select(sqlalchemy.func.sum(CapacityLedger.c.quantity) * 50).where(
            CapacityLedger.c.potion == True, CapacityLedger.c.delivered == True
        )
        res = connection.execute(stmt)
        change_capacity = res.scalar_one_or_none()
        if (not change_capacity):
            change_capacity = 0
        capacity_potions += change_capacity
        print(capacity_potions)
      
        # check if we should start favoring some potions, depending on if we have enough potions
        # calculate how many potions we currently have
        res = connection.execute(sqlalchemy.text("SELECT SUM(change) as potion_count FROM potion_ledger"))
        total_potions = res.scalar_one_or_none()

          
        if (total_potions == None):
            print('failed to fetch potion count')
            total_potions = 0
        print(total_potions)

        if total_potions >= capacity_potions:
            print("too many potions, exceeds ", str(capacity_potions))
            return needs



        result = connection.execute(sqlalchemy.text(f"""
            SELECT attribute, SUM(change) as total
            FROM inventory_ledger
            GROUP BY attribute
        """))
        # Each bottle has a quantity of what proportion of red, blue, and
        # green potion to add.
        # Expressed in integers from 1 to 100 that must sum up to 100.
        for row in result:
            # optimizes once ml for a given color has been checked
            if not inventory[0] and row.attribute == 'red_ml':
                inventory[0] = row.total
            elif not inventory[1] and row.attribute == 'green_ml':
                inventory[1] = row.total
            elif not inventory[2] and row.attribute == 'blue_ml':
                inventory[2] = row.total
            elif not inventory[3] and row.attribute == 'dark_ml':
                inventory[3] = row.total


        print("inventory ", inventory)
        # we want to produce at least 1 custom potion for the meantime, we will have this be known
        # as potion thresehold
        # DEFAULT POTIONS - fully red, green, blue or dark

        res = connection.execute(sqlalchemy.text("SELECT red, green, blue, dark, quantity "+\
                                           "FROM wishlist " +\
                                            "WHERE exclude = FALSE"))

        wishlist = res.all()
        res = connection.execute(sqlalchemy.text("SELECT red, green, blue, dark "+\
                                           "FROM wishlist " +\
                                            "WHERE exclude = TRUE"))
        excluded =set([tuple(potion) for potion in res.all()])


        potion_type = None
        # check wishlist, and add quantities we want before continuing
        for potion in wishlist:
            potion_type = [potion[0], potion[1], potion[2], potion[3]]
            quantity = potion[4]
            # check inventory for each potion
            max_potions = 0
            for i in range(4):
                ml_required = potion_type[i]
                if (ml_required == 0):
                    continue
                produced = inventory[i] // potion_type[i]
                if produced == 0:
                    break
                if max_potions == 0:
                    max_potions = produced
                    continue
                max_potions = min(produced, max_potions)
            print("Produced ", max_potions, " for ", potion_type)

            if max_potions == 0:
                continue
            elif max_potions < quantity:
                quantity = max_potions
                
            if quantity == 0:
                continue
            print('produced: ', quantity, " of " , potion_type)
            if quantity + total_potions >= capacity_potions:
                potions_produced = (capacity_potions - total_potions) 
                if potions_produced == 0:
                    continue
                needs.append(
                                {
                                    "potion_type": potion_type.copy(),
                                    "quantity": potions_produced,
                                }
                            )
                return needs
            needs.append(
                            {
                                "potion_type": potion_type.copy(),
                                "quantity": quantity,
                            }
                        )

        potion_type = [0, 0, 0, 0]
        for idx in range(len(inventory)):
            potion_type[idx] = 100
            if (tuple(potion_type) in excluded):
                potion_type[idx] = 100
                continue
            potions_produced = (inventory[idx] // 100)

            # check potion thresehold
            if (potions_produced == 0):
                potion_type[idx] = 0
                continue;
            potions_produced = min(potions_produced, math.floor((capacity_potions - total_potions) * POTION_THRESEHOLD[idx]))
                

            if potions_produced == 0:
                potion_type[idx] = 0
                continue
            if potions_produced + total_potions >= capacity_potions:
                potions_produced = (capacity_potions - total_potions) 
                if potions_produced == 0:
                    potion_type[idx] = 0
                    continue
                needs.append(
                                {
                                    "potion_type": potion_type.copy(),
                                    "quantity": potions_produced,
                                }
                            )
                return needs

            needs.append(
                            {
                                "potion_type": potion_type.copy(),
                                "quantity": potions_produced,
                            }
                        )
          

            potion_type[idx] = 0

            inventory[idx] -= potions_produced * 100
            total_potions += potions_produced

        print(inventory, total_potions)
        # CUSTOM POTIONS
        # use remaining mls to create some wacky potion
        # calculate most custom potions we can make
        excluded = excluded.union(set(wishlist))
        print('excluded:', excluded)
        create_custom_potions(inventory, needs,excluded, total_potions, capacity_potions)
        

        # let custom potions be 

        # print("custom created", custom_created)
        # if custom_created > 0:
        #     # remove from max element if necessary
        #     extra_ml = (total_ml - (custom_created * 100))
        #     if (extra_ml):
        #         inventory[max_ml_idx] -= extra_ml
        #     # iterate through all available ml again and calculate "amount" per color
        #     potion_type = [0, 0, 0, 0]
        #     cur_sum = 0
        #     for idx in range(len(inventory)):
        #         potion_type[idx] = inventory[idx] // custom_created
        #         change_inventory[idx] += potion_type[idx] * custom_created
        #     print(total_ml, custom_created, inventory)
        #     if ((cur_sum := sum(potion_type))!= 100):
        #         potion_type[max_ml_idx] += (100 - cur_sum)
        #         change_inventory[max_ml_idx] += ((100 - cur_sum) * custom_created) 

        #     needs.append({
        #                     "potion_type": potion_type,
        #                     "quantity": custom_created,
        #                 })
         


        print("Final Inventory:", inventory)
        print("Needs:", needs)
        return needs 

def get_potion_rankings():
    with db.engine.begin() as connection:
        stmt = sqlalchemy.select(func.avg(func.sum(potions_ledger_table.c.change)))
        stmt = stmt.where(potions_ledger_table.c.time)
        connection.execute()

def create_custom_potions(inventory: list[int], needs: list[dict], excluded: set, total_potions: int = 0, change_capacity: int = 50, ratio: list[int] = None):
    # Store potion quantity by type
    potion_quantities = {}

    # iterate until no more complete potions can be created
    inventory_check = 0
    while inventory_check < 3 and total_potions < change_capacity:
        inventory_check = 0
        # iterate every potion, getting ratios of 50 and 25
        for i in random.sample(range(0, 4), 4):
            if inventory[i] < 50:
                inventory_check += 1
                continue
            potion_type = [0, 0, 0, 0]
            potion_type[i] = 50
            for j in range(0, 4):
                if j == i:
                    continue
                if inventory[j] < 50:
                    continue
                potion_type[j] = 50
                key = tuple(potion_type)
                if key in excluded:
                    potion_type[j] = 0
                    continue

                inventory[j] -= 50
                inventory[i] -= 50
                if key in potion_quantities:
                    potion_quantities[key] += 1
                else:
                    potion_quantities[key] = 1
                potion_type[j] = 0
                total_potions += 1
                if total_potions == change_capacity or inventory[i] < 50:
                    break
                   
            if total_potions == change_capacity or inventory[i] < 50:
                break

            for j in range(0, 4):
                buddy = j + 1
                if j == i:
                    continue
                if buddy == i:
                    # check if we can loop back
                    if buddy + 1 > 3:
                        if 0 != i:
                            buddy = 0
                        else:
                            continue
                    else:
                        buddy += 1
                if inventory[j] < 25 or inventory[buddy] < 25:
                    continue

                # Modify potion type for this combination
                potion_type[j] = 25
                potion_type[buddy] = 25
                key = tuple(potion_type)
                if (key in excluded):
                        potion_type[j] = 0
                        potion_type[buddy] = 0
                        continue
                if key in potion_quantities:
                    potion_quantities[key] += 1
                else:
                    potion_quantities[key] = 1

                inventory[j] -= 25
                inventory[buddy] -= 25
                inventory[i] -= 50

               
                potion_type[j] = 0
                potion_type[buddy] = 0

                total_potions += 1
                if total_potions == change_capacity or inventory[i] < 50:
                    break

    # Append all potion types and quantities to needs at the end
    for potion_type, quantity in potion_quantities.items():
        needs.append({
            "potion_type": list(potion_type),
            "quantity": quantity,
        })

    print(needs)


if __name__ == "__main__":
    print(get_bottle_plan())