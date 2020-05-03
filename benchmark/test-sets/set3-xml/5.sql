alter session set NLS_NUMERIC_CHARACTERS = '.,';
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.5)
WHERE PRODUCT_ID = 8879;

update ORDERS O1
    set ORDER_ITEMS = (
    select xmlquery(
            '
    <orderitems>
    {
        for $i in $p/orderitems/orderitem
        let $oix := $i/itemId/text()
        return
        if ($i/productId=8879) then
        element {"orderitem"}
            {
                (
                    for $e in $i/*
                    let $new_price := xs:decimal($i[itemId = $oix]/unitPrice) + xs:decimal($i[itemId = $oix]/unitPrice) * xs:decimal("0.5")
                    return
                        if ($e/name()="unitPrice") then
                            <unitPrice>{xs:string($new_price)}</unitPrice>
                        else
                            $e
                )
            }
        else
            $i
    }
    </orderitems>
    '
    passing O1.ORDER_ITEMS AS "p" returning content)
    from ORDERS O2
    where O1.ORDER_ID = O2.ORDER_ID);
-- WHERE ORDER_ID in (379, 880);

/*
------ CHECKS
-- check in products
select PRODUCT_ID, LIST_PRICE
FROM PRODUCTS
    WHERE PRODUCT_ID = 8879;


-- check in orders for selected orderItems
select extract(ORDER_ITEMS, '/orderitems/orderitem[productId = 8879]/unitPrice')
from orders o
where o.ORDER_ID = 379;
*/