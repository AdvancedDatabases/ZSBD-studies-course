-- enable FK constraints
CONNECT usr/pwd@//localhost:1521/pdb;

ALTER TABLE countries ENABLE CONSTRAINT fk_countries_regions;
ALTER TABLE locations ENABLE CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses ENABLE CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees ENABLE CONSTRAINT fk_employees_manager;
ALTER TABLE products ENABLE CONSTRAINT fk_products_categories;
ALTER TABLE contacts ENABLE CONSTRAINT fk_contacts_customers;
ALTER TABLE orders ENABLE CONSTRAINT fk_orders_customers;
ALTER TABLE orders ENABLE CONSTRAINT fk_orders_employees;
ALTER TABLE order_items ENABLE CONSTRAINT fk_order_items_products;
ALTER TABLE order_items ENABLE CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories ENABLE CONSTRAINT fk_inventories_products;
ALTER TABLE inventories ENABLE CONSTRAINT fk_inventories_warehouses;
ALTER TABLE orders
ADD CONSTRAINT ORDER_STATUS_CK CHECK(STATUS IN ('Shipped', 'Pending', 'Canceled'));
COMMIT;
