-- 1. Wygenerowanie listy klientów oraz sumy wartości (kwota pieniężna)
-- anulowanych przez nich zamówień, pogrupowanej wg pracowników którzy
-- obsługiwali te zamówienia. ~ 200

SELECT c.name, e.first_name, e.last_name,
  SUM(oi.quantity * oi.unit_price) AS cancelled_orders_cost
FROM Customers c
  JOIN Orders o ON c.CUSTOMER_ID = o.customer_id
  JOIN Employees e ON o.salesman_id = e.EMPLOYEE_ID
  JOIN Order_items oi ON o.ORDER_ID = oi.order_id
WHERE o.status = 'Canceled'
GROUP BY c.name, e.first_name, e.last_name
ORDER BY cancelled_orders_cost DESC;
