-- disable FK constraints 
CONNECT usr/pwd@//localhost:1521/pdb;

ALTER TABLE countries DISABLE CONSTRAINT fk_countries_regions;
ALTER TABLE locations DISABLE CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses DISABLE CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees DISABLE CONSTRAINT fk_employees_manager;
ALTER TABLE products DISABLE CONSTRAINT fk_products_categories;
ALTER TABLE contacts DISABLE CONSTRAINT fk_contacts_customers;
ALTER TABLE orders DISABLE CONSTRAINT fk_orders_customers;
ALTER TABLE orders DISABLE CONSTRAINT fk_orders_employees;
ALTER TABLE order_items DISABLE CONSTRAINT fk_order_items_products;
ALTER TABLE order_items DISABLE CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories DISABLE CONSTRAINT fk_inventories_products;
ALTER TABLE inventories DISABLE CONSTRAINT fk_inventories_warehouses;

COMMIT;