from fastapi import APIRouter, Depends, Request, HTTPException, status
from pydantic import BaseModel
from src.api import auth
from enum import Enum
import sqlalchemy
from sqlalchemy import Integer, Column, BigInteger, String, MetaData, ForeignKey
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import relationship
from src import database as db
from src.helper import sku_to_db_col
from src.models import potions_table, potions_ledger_table, customer_table, carts_table

class Base(DeclarativeBase):
    pass

# declare GLOBAL constant table for customer_carts
meta_customer = MetaData()
meta_potion_cart = MetaData()

customer_carts = sqlalchemy.Table("customers", 
                    meta_customer,
                    Column("id", Integer ,primary_key=True),
                    Column("customer_name", String()),
                    Column("character_class", String()),
                    Column("level", Integer))


class PotionCarts(Base):
    __tablename__ = "potion_carts"
    id = Column("id", Integer, primary_key=True)
    customer_id = Column("customer_id", ForeignKey("customers.id"))
    potion_sku = Column(String)
    quantity = Column(Integer)



memory_cart = []
router = APIRouter(
    prefix="/carts",
    tags=["cart"],
    dependencies=[Depends(auth.get_api_key)],
)

class search_sort_options(str, Enum):
    customer_name = "customer_name"
    item_sku = "item_sku"
    line_item_total = "line_item_total"
    timestamp = "timestamp"

class search_sort_order(str, Enum):
    asc = "asc"
    desc = "desc"   

@router.get("/search/", tags=["search"])
def search_orders(
    request: Request,
    customer_name: str = "",
    potion_sku: str = "",
    search_page: str = "",
    sort_col: search_sort_options = search_sort_options.timestamp,
    sort_order: search_sort_order = search_sort_order.desc,
):
    """
    Search for cart line items by customer name and/or potion sku.

    Customer name and potion sku filter to orders that contain the 
    string (case insensitive). If the filters aren't provided, no
    filtering occurs on the respective search term.

    Search page is a cursor for pagination. The response to this
    search endpoint will return previous or next if there is a
    previous or next page of results available. The token passed
    in that search response can be passed in the next search request
    as search page to get that page of results.

    Sort col is which column to sort by and sort order is the direction
    of the search. They default to searching by timestamp of the order
    in descending order.

    The response itself contains a previous and next page token (if
    such pages exist) and the results as an array of line items. Each
    line item contains the line item id (must be unique), item sku, 
    customer name, line item total (in gold), and timestamp of the order.
    Your results must be paginated, the max results you can return at any
    time is 5 total line items.
    """

    # get all customers, customers and completed_customers table, less overhead with parsing?
    # alternative could be adding attribute - completed? to be fair, if we are searching for the name, we might
    # as well check the attribute, the only time this overhead would be apparent is when grabbing all users.
    customers = []
    with db.engine.begin() as connection:
        # Query for total count
        total_count_query = sqlalchemy.select(sqlalchemy.func.count()).select_from(carts_table).join(
            customer_table, carts_table.c.customer_id == customer_table.c.id
        )
        query = sqlalchemy.select(carts_table.c.id.label("line_item_id"), carts_table.c.item_sku, customer_table.c.customer_name, 
                                   (carts_table.c.quantity * potions_table.c.price).label("line_item_total"), customer_table.c.visit_time.label("timestamp"))
        query = query.join(carts_table, carts_table.c.customer_id == customer_table.c.id)
        query = query.join(potions_table, potions_table.c.potion_sku == carts_table.c.item_sku)

 
      



        # loop through conditional operators and tack onto query
        if len(customer_name := customer_name.strip()) > 0:
            query = query.filter(customer_table.c.customer_name.ilike(customer_name+ "%"))
            total_count_query = total_count_query.filter(customer_table.c.customer_name.ilike(customer_name+ "%"))
        if len(potion_sku := potion_sku.strip()) > 0:
            query = query.filter(carts_table.c.item_sku.ilike(potion_sku))
            total_count_query = total_count_query.filter(carts_table.c.item_sku.ilike(potion_sku + "%"))
        if sort_order.value == "asc":
            query = query.order_by(sqlalchemy.text(sort_col.value))
        else:
            query = query.order_by(sqlalchemy.desc(sqlalchemy.text(sort_col.value)))
        query = query.limit(5)
        if len(search_page := search_page.strip()) > 0:
            try:
                search_page = int(search_page) - 1
                if (search_page < 0):
                    search_page = 0
                query = query.offset(search_page * 5)
            except Exception as e:
                print(e)
        else:
            search_page = 0
        print(query)

        line_count = connection.execute(total_count_query).scalar()
        print("Total items: ", line_count)
        # res = connection.execute(sqlalchemy.text("SELECT cart.id AS line_item_id, cart.item_sku AS item_sku," +\
        #                                          "customer_name, cart.quantity AS line_item_total, visit_time FROM customers " +\
        #                                          "JOIN carts AS cart ON cart.customer_id = customers.id "
        #                                          "ORDER BY visit_time DESC " +\
        #                                          "LIMIT 5 "))
        res = connection.execute(query)
        customers = res.mappings().all()


        # get url that called with query params
        print(request.query_params)
        return {
        "previous": return_previous_page(str(request.query_params), line_count, search_page),
        "next": return_next_page(str(request.query_params), line_count, search_page),
        "results": customers ,
        }


class Customer(BaseModel):
    customer_name: str
    character_class: str
    level: int



@router.post("/visits/{visit_id}")
def post_visits(visit_id: int, customers: list[Customer]):
    """
    Which customers visited the shop today?
    """
    print(customers)

    return "OK"


@router.post("/")
def create_cart(new_cart: Customer):
    """ """
    # create a cart for a user
    with db.engine.begin() as connection:
        # insert into customer_table
        values = {"customer_name": new_cart.customer_name, 
                "character_class": new_cart.character_class, 
                "level": new_cart.level}
        smtp = customer_carts.insert().values(values)
        res = connection.execute(smtp)


    return {"cart_id": res.inserted_primary_key[0]}


class CartItem(BaseModel):
    quantity: int


@router.post("/{cart_id}/items/{item_sku}")
def set_item_quantity(cart_id: int, item_sku: str, cart_item: CartItem):
    """ """


    values = {
        "customer_id": cart_id,
        "sku": item_sku,
        "quantity": cart_item.quantity
    }

    with db.engine.begin() as connection:
        # will this be an update or insertion????
        # assuming insertions
        try:
            connection.execute(sqlalchemy.text( "INSERT INTO carts (customer_id, item_sku, quantity) " + \
                                                "VALUES (:customer_id, :sku, :quantity)" ), values)
        except Exception as e:
            # TODO: find out if custom messages is better, in this case it probably won't be
            #       as invalid customer id isn't the only reason why this api would fail
            print(e)
            raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Invalid customer id.")
      
    return "OK"


class CartCheckout(BaseModel):
    payment: str

@router.post("/{cart_id}/checkout")
def checkout(cart_id: int, cart_checkout: CartCheckout):
    """ """
    # update db to reflect potions purchased and gold gained
    total  = total_quantity = 0
    values = {
        "cart_id": cart_id
    }
    # update_val = {
    #     "cart_id": cart_id,
    #     "sku": "",
    #     "quantity": 0
    # }
    update_val = []
    with db.engine.begin() as connection:
        # retrieve all potions in cart
        res = connection.execute(sqlalchemy.text(
            "SELECT carts.item_sku, carts.quantity, potions.price, COALESCE(SUM(ledger.change), 0) FROM carts " +\
            "JOIN potion_ledger AS ledger ON ledger.potion_sku = item_sku " +\
            "JOIN potions ON potions.potion_sku = item_sku " + \
            "WHERE customer_id = :cart_id " +\
            "GROUP BY item_sku, carts.quantity, potions.price "
        ), values)
        cart = res.all()
        print(cart)
        for purchase in cart:
            # check new quantity of potion before proceeding????
            if purchase[3] < purchase[1]:
                print("Error in checkout. Too many potions requested.")
                continue
            total_quantity += purchase[1]
            # quantity x price
            total += purchase[1] * purchase[2]
            update_val.append({
                "potion_sku": purchase[0],
                "change": -1 * purchase[1],
                "reason": str(cart_id) + " checked out."
            })
        if total_quantity > 0:
            # bulk update all potion quantities
            # ASSUMING no maliscious requests are made :(
            # connection.execute(sqlalchemy.update(potions_table).where(
            #     potions_table.c.potion_sku == sqlalchemy.bindparam("b_potion_sku")
            # ), update_val)
            # update cart to reflect completed checkout
            connection.execute(sqlalchemy.update(customer_table).values(completed=1).where(customer_table.c.id == cart_id))
            connection.execute(sqlalchemy.insert(potions_ledger_table).values(update_val))
          

            # update gold?? better way to do this?? same time as last sql??
            connection.execute(sqlalchemy.text("INSERT INTO inventory_ledger (attribute, change, reason) " +\
                                               "VALUES ('gold', :change, :reason)"), {"change": total, "reason": str(cart_id) + " checked out."})
        

        # # update potion via sku
        # while len(cart) > 0:
        #     item = cart.pop()
        #     update_val["quantity"] = item["quantity"]
        #     # get column name
        #     # TODO: switch to dynamic potion types
        #     # update potion quantity
        #     col_name = sku_to_db_col(item["sku"])
        #     connection.execute(sqlalchemy.text(
        #         "UPDATE global_inventory " +\
        #         f"SET {col_name} = {col_name} - :quantity " +\
        #         "WHERE id = 2"
        #     ), update_val)

        #     # TODO: switch from hardcoded values - dynamic potion value
        #     gold_recv += (item["quantity"] * 50)
        #     total_purchased += 1


        # for potion in potions_purchased:
        #     sku, quantity = potion

        #     update_val["sku"] = sku
        #     update_val["quantity"] = quantity
        #     # update potion quantity
        #     connection.execute(sqlalchemy.text(
        #         "UPDATE potion_carts" +\
        #         "SET quantity = quantity - :quantity" +\
        #         "WHERE customer_id = :cart_id AND potion_sku = :sku"
        #     ), update_val)
        
        # connection.execute(sqlalchemy.text(
        #     "UPDATE potions_cart SET "
        # ))
        # update gold recieved
        # connection.execute(sqlalchemy.text(
        #     "UPDATE global_inventory " + \
        #     "SET gold = gold + :gold_recv"
        # ), {"gold_recv": gold_recv})

    return {"total_potions_bought": total_quantity, "total_gold_paid": total}

import re

def return_previous_page(query: str, line_count: int, cur_page: int):
    # prev_page = "/carts/search/"
    if line_count == 0 or cur_page <= 0:
        return ""
    remaining = ((int(line_count) - ((cur_page) * 5))) // 5
    if remaining < -1:
        new_page = (line_count // 5)
    else:
        new_page = cur_page 
    return new_page

    # query = re.sub(r'search_page=\d+', f'search_page={new_page}', query)
    # return prev_page + query

def return_next_page(query: str, line_count: int, cur_page: int):
    # prev_page = "/carts/search/"
    remaining = ((int(line_count) - ((cur_page) * 5))) // 5
    if remaining <= 0:
        return ""
    new_page = cur_page + 2
    # if (cur_page == 0):
        # return prev_page + query + "&search_page=" + str(new_page)
    # query = re.sub(r'search_page=\d+', f'search_page={new_page}', query)
    return new_page
    
    # r eturn prev_page + query
