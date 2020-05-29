--Wygenerowanie zestawienia sumy przychodów z zamówień obsługiwanych przez
--pracowników na poszczególnych stanowiskach (job_title) z podziałem na lata,
--dla ostatnich pięciu lat. ~ 20 x 5

SELECT job_title, NVL("2016",0) "2016", NVL("2017",0) "2017",
       NVL("2018",0) "2018", NVL("2019",0) "2019", NVL("2020",0) "2020"
FROM (SELECT job_title, order_year, NVL(SUM(order_income),0) order_income
      FROM(SELECT e.JOB_TITLE, EXTRACT(year FROM o.order_date) order_year,
                 oi.quantity * oi.unit_price order_income
           FROM ORDER_ITEMS oi JOIN ORDERS o ON o.ORDER_ID = oi.ORDER_ID
           JOIN EMPLOYEES e ON o.SALESMAN_ID = e.EMPLOYEE_ID)
      GROUP BY job_title, order_year)
PIVOT
 (
 SUM(order_income)
 FOR order_year
        -- cannot use subquery in 'in word': https://www.oracletutorial.com/oracle-basics/oracle-pivot/
 IN (2016 "2016",2017 "2017",2018 "2018",2019 "2019",2020 "2020")
 )
ORDER BY JOB_TITLE;
