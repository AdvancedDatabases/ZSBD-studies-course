-- set unit price to standard cost in every order item from every pending order from selected product category 
update ORDER_ITEMS OI
set UNIT_PRICE = nvl((
    select P.STANDARD_COST
    from PRODUCTS P
    where P.PRODUCT_ID = OI.PRODUCT_ID
),0)
where OI.PRODUCT_ID in (
    select P.PRODUCT_ID
    from PRODUCTS P join PRODUCT_CATEGORIES PC on P.CATEGORY_ID = PC.CATEGORY_ID
    where PC.CATEGORY_NAME = 'Pencil'
    ) and OI.ORDER_ID in (
    select ORDERS.ORDER_ID from ORDERS where STATUS = 'Pending'
);
