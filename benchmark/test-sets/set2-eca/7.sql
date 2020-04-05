-- set quantity to zero for selected category
update INVENTORIES
set QUANTITY = 0
where PRODUCT_ID in
      (select P.PRODUCT_ID
          from PRODUCTS P join PRODUCT_CATEGORIES PC on P.CATEGORY_ID = PC.CATEGORY_ID
          where PC.CATEGORY_NAME = 'Powder');
