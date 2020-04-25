-- set quantity to zero for selected category
update INVENTORIES
set QUANTITY = 0
where PRODUCT_ID in
      (select P.PRODUCT_ID
          from PRODUCTS P
          where extractValue(P.category, 'category/categoryName') = 'Powder');