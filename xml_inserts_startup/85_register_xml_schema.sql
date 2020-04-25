CONNECT SYSTEM/password@//localhost:1521/pdb;

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
END;
/

-- schema 2: location

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
                    	<xs:element type="xs:string" name="countryId"/>
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
/

-- schema 3: orderItems

BEGIN DBMS_XMLSCHEMA.registerSchema(
  SCHEMAURL => 'orderItems.xsd',
  SCHEMADOC => '<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="orderitems">
        <xs:complexType>
        <xs:sequence>
            <xs:element name="orderitem" maxOccurs="unbounded" minOccurs="0">
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
END;
/
