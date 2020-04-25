CONNECT usr/pwd@//localhost:1521/pdb;

alter table usr.PRODUCTS add (category sys.XMLTYPE)
   xmltype column category
   XMLSCHEMA "cat.xsd"
   element "category";

alter table usr.warehouses add (LOCATION sys.XMLTYPE) xmltype column LOCATION
   	XMLSCHEMA "location.xsd"
   	element "location";

alter table usr.ORDERS add (order_items sys.XMLTYPE)
   xmltype column order_items
   XMLSCHEMA "orderItems.xsd"
   element "orderitems";
