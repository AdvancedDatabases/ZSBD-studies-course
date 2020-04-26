SELECT extractValue(W.LOCATION, 'location/country/countryId'),
       extractValue(P.category, 'category/categoryName'),
       SUM(I.QUANTITY) quantity,
       COUNT(P.PRODUCT_ID) diff_products
FROM WAREHOUSES W
    JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
    JOIN PRODUCTS P on I.PRODUCT_ID = P.PRODUCT_ID
GROUP BY extractValue(W.LOCATION, 'location/country/countryId') , extractValue(P.category, 'category/categoryName');

SELECT XMLQUERY('//countryId/text()' PASSING W.LOCATION RETURNING CONTENT).getStringVal() CountryId,
       XMLQUERY('//categoryName/text()' PASSING P.CATEGORY RETURNING CONTENT ).getStringVal() CategoryName,
       SUM(I.QUANTITY) quantity,
       COUNT(P.PRODUCT_ID) diff_products
FROM WAREHOUSES W
    JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
    JOIN PRODUCTS P on I.PRODUCT_ID = P.PRODUCT_ID
GROUP BY XMLQUERY('//countryId/text()' PASSING W.LOCATION RETURNING CONTENT).getStringVal(), XMLQUERY('//categoryName/text()' PASSING P.CATEGORY RETURNING CONTENT ).getStringVal();

CREATE OR REPLACE FUNCTION getFirstNodeValue
    (
        p_xmlDoc      IN XMLTYPE,
        p_elementName IN VARCHAR2
    )
    RETURN VARCHAR2
    IS
        v_doc DBMS_XMLDOM.DOMDocument;
        v_elements DBMS_XMLDOM.DOMNodeList;
        v_result VARCHAR2(20);
    BEGIN
        v_doc := DBMS_XMLDOM.newDOMDocument(p_xmlDoc);
        v_elements := DBMS_XMLDOM.getElementsByTagName(v_doc, p_elementName);
        v_result := DBMS_XMLDOM.getNodeValue(DBMS_XMLDOM.getFirstChild(DBMS_XMLDOM.Item(v_elements, 0)));
        return v_result;
    END;


SELECT getFirstNodeValue(W.LOCATION, 'countryId'), getFirstNodeValue(P.category, 'categoryName'), SUM(I.QUANTITY) quantity, COUNT(P.PRODUCT_ID) diff_products
FROM WAREHOUSES W
    JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
    JOIN PRODUCTS P on I.PRODUCT_ID = P.PRODUCT_ID
GROUP BY getFirstNodeValue(W.LOCATION, 'countryId'), getFirstNodeValue(P.category, 'categoryName');




