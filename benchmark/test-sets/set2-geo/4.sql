-- select most popular product for every month in 2019 with count
select  month, name, count
from (
    select month, name, count, max(count) over (partition by month) max_count_by_month
    from (
             select extract(month from O.ORDER_DATE) as month, P.PRODUCT_NAME as name, count(O.ORDER_ID) as count
             from PRODUCTS P
                      join ORDER_ITEMS OI on P.PRODUCT_ID = OI.PRODUCT_ID
                      join ORDERS O on OI.ORDER_ID = O.ORDER_ID
             where extract(year from O.ORDER_DATE) = '2019'
             group by extract(month from O.ORDER_DATE), P.PRODUCT_NAME
             order by month, count desc
         )
)
where count = max_count_by_month;
