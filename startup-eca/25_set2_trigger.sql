CREATE OR REPLACE TRIGGER REMOVE_WAREHOUSE
BEFORE DELETE
    ON WAREHOUSES
    FOR EACH ROW
DECLARE
    pragma autonomous_transaction;
BEGIN
    update ORDERS
    set STATUS = 'Canceled'
    where STATUS = 'Pending' and ORDER_ID in (
        select distinct  O.ORDER_ID from ORDERS O
        join ORDER_ITEMS OI on O.ORDER_ID = OI.ORDER_ID
        join PRODUCTS P on OI.PRODUCT_ID = P.PRODUCT_ID
        join INVENTORIES I on P.PRODUCT_ID = I.PRODUCT_ID
        join WAREHOUSES W on I.WAREHOUSE_ID = W.WAREHOUSE_ID
        where W.WAREHOUSE_ID = :OLD.WAREHOUSE_ID
        );
    commit;
END;
