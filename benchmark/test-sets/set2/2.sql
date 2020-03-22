-- select top 5 managers whose empolyees served most orders
select *
from (
    select min(m.FIRST_NAME) as first_name, min(m.LAST_NAME) as last_name, count(ORDER_ID) as count
    from EMPLOYEES M join EMPLOYEES E On E.MANAGER_ID = M.EMPLOYEE_ID
    join ORDERS O on E.EMPLOYEE_ID = O.SALESMAN_ID
    where O.STATUS = 'Shipped'
    group by e.MANAGER_ID
    order by count(ORDER_ID) desc
)
where rownum <=5;
