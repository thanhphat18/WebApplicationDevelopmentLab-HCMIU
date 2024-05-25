<%-- 
    Document   : index
    Created on : May 24, 2024, 6:36:48 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="org.w3c.dom.*, javax.xml.parsers.*" %>
<%
    DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance(); 
    DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
    Document doc = docBuilder.parse("/Users/thanhphatchau/Library/CloudStorage/OneDrive-VietNamNationalUniversity-HCMINTERNATIONALUNIVERSITY/Study Docs/recent semester/Web Application Development/lab/lab7/exercise2/WebClass.xml");
%>
<%!
    public boolean isTextNode(Node n){
    return n.getNodeName().equals("#text"); }
%> 
<html>
    <head><title>Parsing of xml using DOM Parser</title></head> 
    <body>
        <h2>
            <font color='red'>Student of Web Class</font>
        </h2> 
        <table border="2">
            <tr>
                <th>Name of Student</th> 
                <th>ID Number</th> 
                <th>Date of Birth</th> 
                <th>City</th>
            </tr> 
            <%
                Element element = doc.getDocumentElement(); 
                NodeList personNodes = element.getChildNodes(); 
                for (int i=0; i<personNodes.getLength(); i++){
                    Node stu = personNodes.item(i); if (isTextNode(stu))
                    continue;
                NodeList NameDOBCity = stu.getChildNodes();
            %> 
            <tr> 
            <%
                for (int j=0; j<NameDOBCity.getLength(); j++ ){
                    Node node = NameDOBCity.item(j);
                    if ( isTextNode(node))
                        continue; 
            %>
                <td><%= node.getFirstChild().getNodeValue() %></td>
                <%}%> 
            </tr>
            <%}%>
    </table>
  </body>
</html>

