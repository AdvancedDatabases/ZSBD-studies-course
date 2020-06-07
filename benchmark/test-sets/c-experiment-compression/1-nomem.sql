ALTER TABLE ORDER_ITEMS
INMEMORY NO MEMCOMPRESS;

SELECT table_name,
       inmemory,
       inmemory_priority,
       inmemory_distribute,
       inmemory_compression,
       inmemory_duplicate
FROM   user_tables
WHERE  table_name = 'ORDER_ITEMS';