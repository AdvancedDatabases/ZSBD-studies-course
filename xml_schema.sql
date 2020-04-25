-- schema 1: category

BEGIN DBMS_XMLSCHEMA.registerSchema(
  SCHEMAURL => 'cat.xsd',
  SCHEMADOC => '<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="category">
    <xs:complexType>
      <xs:sequence>
        <xs:element type="xs:decimal" name="categoryId"/>
        <xs:element type="xs:string" name="categoryName"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',
   LOCAL     => FALSE);
END;/

alter table PRODUCTS add (category sys.XMLTYPE)
   xmltype column category
   XMLSCHEMA "cat.xsd"
   element "category";


create table cat_tab(
 id number,
 category sys.XMLType
)
  xmltype column category
    XMLSCHEMA "cat.xsd"
    element "category";

INSERT INTO cat_tab VALUES (100, XMLType(
        '
        <category>
            <categoryId>1</categoryId>
            <categoryName>perfume</categoryName>
        </category>').createSchemaBasedXML('cat.xsd'));

select extractValue(cat.category, 'category/categoryId') FROM cat_tab cat

-- schema 3: contacts

BEGIN DBMS_XMLSCHEMA.registerSchema(
  SCHEMAURL => 'contacts.xsd',
  SCHEMADOC => '<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="contacts">
	<xs:complexType>
  	<xs:sequence>
    	<xs:element name="contact" maxOccurs="unbounded" minOccurs="0">
        	<xs:complexType>
            	<xs:sequence>
                	<xs:element type="xs:decimal" name="contactId"/>
                	<xs:element type="xs:string" name="firstName"/>
                	<xs:element type="xs:string" name="lastName"/>
                	<xs:element type="xs:string" name="email"/>
                	<xs:element type="xs:string" name="phone"/>
            	</xs:sequence>
        	</xs:complexType>
    	</xs:element>
  	</xs:sequence>
	</xs:complexType>
  </xs:element>
</xs:schema>',
   LOCAL 	=> FALSE);
END;


alter table usr.customers add (contacts sys.XMLTYPE) xmltype column contacts
	XMLSCHEMA "contacts.xsd"
	element "contacts";

update usr.customers set contacts = XMLType(
'<contacts>
	<contact>
    	<contactId>1</contactId>
    	<firstName>''John''</firstName>
    	<lastName>''Doe''</lastName>
    	<email>''doe@gmail.com''</email>
    	<phone>''4664-4646-464''</phone>
	</contact>
	<contact>
    	<contactId>2</contactId>
    	<firstName>''Jane''</firstName>
    	<lastName>''Doe''</lastName>
    	<email>''doe@gmail.com''</email>
    	<phone>''4664-4646-464''</phone>
	</contact>
</contacts>'
) where CUSTOMER_ID = 68;

select extractValue(CONTACTS, '//contacts/contact[1]/firstName') from usr.CUSTOMERS where CUSTOMER_ID = 68;

-- schema 3: location

BEGIN DBMS_XMLSCHEMA.registerSchema(
  SCHEMAURL => 'location.xsd',
  SCHEMADOC => '<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="location">
	<xs:complexType>
    	<xs:sequence>
        	<xs:element type="xs:integer" name="locationId"/>
        	<xs:element type="xs:string" name="address"/>
        	<xs:element type="xs:string" name="postalCode"/>
        	<xs:element type="xs:string" name="city"/>
        	<xs:element name="country">
            	<xs:complexType>
                	<xs:sequence>
                    	<xs:element type="xs:integer" name="countryId"/>
                    	<xs:element type="xs:string" name="countryName"/>
                    	<xs:element name="region">
                        	<xs:complexType>
                            	<xs:sequence>
                                	<xs:element type="xs:integer" name="regionId"/>
                                	<xs:element type="xs:string" name="regionName"/>
                            	</xs:sequence>
                        	</xs:complexType>
                    	</xs:element>
                	</xs:sequence>
            	</xs:complexType>
        	</xs:element>
    	</xs:sequence>
	</xs:complexType>
  </xs:element>
</xs:schema>',
   LOCAL 	=> FALSE);
END;

alter table usr.warehouses add (LOCATION sys.XMLTYPE) xmltype column LOCATION
	XMLSCHEMA "location.xsd"
	element "location";

update usr.warehouses set LOCATION = XMLType(
	'<location>
	<locationId>1</locationId>
	<address>ANYWHERE</address>
	<postalCode>11-111</postalCode>
	<city>ANYWHERE CITY</city>
	<country>
    	<countryId>1</countryId>
    	<countryName>RUSSIA</countryName>
    	<region>
        	<regionId>1</regionId>
        	<regionName>SIBERIA</regionName>
    	</region>
	</country>
</location>'
) where  WAREHOUSE_ID = 1;

select extract(LOCATION, '//address') from usr.warehouses where WAREHOUSE_ID = 1;

-- schema 4: orderItems

BEGIN DBMS_XMLSCHEMA.registerSchema(
  SCHEMAURL => 'orderItems.xsd',
  SCHEMADOC => '<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="orderItems">
        <xs:complexType>
        <xs:sequence>
            <xs:element name="orderItem" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element type="xs:integer" name="itemId"/>
                        <xs:element type="xs:integer" name="productId"/>
                        <xs:element type="xs:decimal" name="quantity"/>
                        <xs:element type="xs:decimal" name="unitPrice"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:sequence>
        </xs:complexType>
      </xs:element>
    </xs:schema>',
   LOCAL     => FALSE);
END;/

alter table ORDERS add (order_items sys.XMLTYPE)
   xmltype column order_items
   XMLSCHEMA "orderItems.xsd"
   element "orderItems";

update ORDERS set order_items = XMLType(
'<orderitems>
	<orderitem>
        <itemId>1</itemId>
        <productId>7283</productId>
        <quantity>208.00</quantity>
        <unitPrice>59.99</unitPrice>
	</orderitem>
    <orderitem>
        <itemId>2</itemId>
        <productId>4486</productId>
        <quantity>920.00</quantity>
        <unitPrice>56.33</unitPrice>
	</orderitem>
    <orderitem>
        <itemId>3</itemId>
        <productId>7083</productId>
        <quantity>401.00</quantity>
        <unitPrice>92.35</unitPrice>
	</orderitem>
</orderitems>'
) where ORDER_ID = 318;

select * from usr.ORDERS where ORDER_ID = 318;

select extractValue(ORDER_ITEMS, '//orderItems/orderItem[1]/itemId') as item_id,
    extractValue(ORDER_ITEMS, '//orderItems/orderItem[1]/productId') as product_id,
    extractValue(ORDER_ITEMS, '//orderItems/orderItem[1]/quantity') as quantity,
    extractValue(ORDER_ITEMS, '//orderItems/orderItem[1]/unitPrice') as unit_price
from usr.ORDERS where ORDER_ID = 318;
