select min(C.NAME), count(O.ORDER_ID)
from CUSTOMERS C join ORDERS O on C.CUSTOMER_ID = O.CUSTOMER_ID
group by C.CUSTOMER_ID
having count(O.ORDER_ID) >= 10;
