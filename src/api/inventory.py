from fastapi import APIRouter, Depends
from pydantic import BaseModel
from src.api import auth
import sqlalchemy
from src import database as db
from sqlalchemy import func
from src.models import potions_ledger_table, CapacityLedger, inventory_ledger_table

router = APIRouter(
    prefix="/inventory",
    tags=["inventory"],
    dependencies=[Depends(auth.get_api_key)],
)

@router.get("/audit")
def get_inventory():
    """ """
    num_potions = num_ml = gold = 0
    
    # query the db
    with db.engine.begin() as connection:
        res = connection.execute(sqlalchemy.text("SELECT attribute, SUM(change) AS total " + \
            "FROM inventory_ledger " + \
            "WHERE attribute IN ('gold', 'red_ml', 'green_ml', 'blue_ml', 'dark_ml') " + \
            "GROUP BY attribute"))
        for row in res:
            if gold == 0 and row[0] == 'gold':
                gold = row[1]
            else:
                num_ml += row[1]
        res = connection.execute(func.coalesce(func.sum(potions_ledger_table.c.change), 0))

        num_potions = res.scalar_one_or_none()

        return {
            "number_of_potions": num_potions if num_potions else 0,
            "ml_in_barrels": num_ml,
            "gold": gold
        }
        

# Gets called once a day
@router.post("/plan")
def get_capacity_plan():
    """ 
    Start with 1 capacity for 50 potions and 1 capacity for 10000 ml of potion. Each additional 
    capacity unit costs 1000 gold.
    """
    # query db, check for any undelivered capacities
    with db.engine.begin() as connection:
        stmt = sqlalchemy.select(CapacityLedger.c.quantity).where(CapacityLedger.c.barrel == True, 
                                                                  CapacityLedger.c.delivered == False).limit(1)
        res = connection.execute(stmt)
        ml_capacity = res.scalar_one_or_none()

        stmt = sqlalchemy.select(CapacityLedger.c.quantity).where(CapacityLedger.c.potion == True,
                                                                  CapacityLedger.c.delivered == False).limit(1)
        res = connection.execute(stmt)
        potion_capacity = res.scalar_one_or_none()
        if not ml_capacity:
            ml_capacity = 0
        if not potion_capacity:
            potion_capacity = 0

    return {
        "potion_capacity": potion_capacity,
        "ml_capacity": ml_capacity 
        }

class CapacityPurchase(BaseModel):
    potion_capacity: int
    ml_capacity: int

# Gets called once a day
@router.post("/deliver/{order_id}")
def deliver_capacity_plan(capacity_purchase : CapacityPurchase, order_id: int):
    """ 
    Start with 1 capacity for 50 potions and 1 capacity for 10000 ml of potion. Each additional 
    capacity unit costs 1000 gold.
    """
    # set potion capacity and/or barrel capacity as delivered
    # take away from gold depending on quantity
    with db.engine.begin() as connection:
        total_gold = (capacity_purchase.potion_capacity + capacity_purchase.ml_capacity) * 1000
        stmt = sqlalchemy.insert(inventory_ledger_table).values({
            "attribute": "gold",
            "change": -1 * total_gold
        })
        connection.execute(stmt)

        # update as delivered
        stmt = sqlalchemy.update(CapacityLedger).values({
            "delivered": True
        }).where(CapacityLedger.c.quantity == capacity_purchase.potion_capacity,
                 CapacityLedger.c.potion == True ,CapacityLedger.c.delivered == False)
        connection.execute(stmt)
        stmt = sqlalchemy.update(CapacityLedger).values({
            "delivered": True
        }).where(CapacityLedger.c.quantity == capacity_purchase.ml_capacity,
                 CapacityLedger.c.barrel == True , CapacityLedger.c.delivered == False)
        connection.execute(stmt)


    return "OK"
