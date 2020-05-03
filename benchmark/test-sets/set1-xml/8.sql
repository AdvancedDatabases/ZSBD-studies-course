update ORDERS O1 SET ORDER_ITEMS =
(
    XMLQUERY (
    'let $s := ora:view("PRODUCTS")/ROW[//categoryName[ora:contains(text(), "False Eyelashes") > 0]]/PRODUCT_ID
    return
    <orderitems>
        {for $i in $p/orderitems/orderitem
        where not ($i[productId = $s])
        return $i}
    </orderitems>'
    PASSING O1.ORDER_ITEMS AS "p" RETURNING CONTENT)
)
where ORDER_ID between 1000 and 1010;