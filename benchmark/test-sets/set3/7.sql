/*
 Dla wybranego klienta, ponowne złożenie (dodanie nowych) zamówień wykonanych
 przez niego w ciągu ostatnich 6 miesięcy, z aktualną datą i pracownikiem który
 obsłużył najwięcej zamówień dla danego klienta. ~ 100
 */

-- selected customer id: 10564
INSERT INTO ORDERS(ORDER_ID, CUSTOMER_ID, STATUS, SALESMAN_ID, ORDER_DATE)
(SELECT (SELECT MAX(ORDER_ID) + 1 FROM ORDERS) + ROWNUM ORDER_ID,
        10564, 'Pending', (SELECT SALESMAN_ID FROM
    (SELECT SALESMAN_ID, COUNT(*) FROM ORDERS
    GROUP BY SALESMAN_ID
    ORDER BY 2 DESC
    FETCH FIRST 1 ROWS ONLY)), SYSDATE FROM ORDERS
WHERE CUSTOMER_ID = 10564 AND ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 6);
