CREATE OR REPLACE FUNCTION getFirstNodeValue
    (
        p_xmlDoc      IN XMLTYPE,
        p_elementName IN VARCHAR2
    )
    RETURN VARCHAR2
    IS
        v_doc DBMS_XMLDOM.DOMDocument;
        v_elements DBMS_XMLDOM.DOMNodeList;
        v_result VARCHAR2(100);
    BEGIN
        v_doc := DBMS_XMLDOM.newDOMDocument(p_xmlDoc);
        v_elements := DBMS_XMLDOM.getElementsByTagName(v_doc, p_elementName);
        v_result := DBMS_XMLDOM.getNodeValue(DBMS_XMLDOM.getFirstChild(DBMS_XMLDOM.Item(v_elements, 0)));
        return v_result;
    END;

select * from ORDER_ITEMS;

