<%-- 
    Document   : index.jsp
    Created on : May 11, 2024, 12:43:17 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Bean</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Using JavaBeans with JSP</th>
            </tr>
        </table>
        <jsp:useBean id="stringBean" class = "Bean.StringBean"/>
        <ol>
            <li>
                Initial Value(from jsp:getProperty):
            </li>
            <li>Initial Value(from JSP expression):
                <i><%= stringBean.getMessage() %></i>
            </li>
            <li>
                <jsp:setProperty name="stringBean" property="message" value="Best string bean: Fortex"/>
                Value after setting property with jsp:setProperty:
                <I><jsp:getProperty name="stringBean" property="message" /></I>
            </li>
            <li>
                <% stringBean.setMessage("My favorite: Kentucky Wonder"); %>
                Value after setting property with scriptlet:
                <I><%= stringBean.getMessage() %></I>
            </li>
            
        </ol>
        <h2>Testing JSP and Java Bean p2: </h2>
        <jsp:useBean id="counter" scope="session" class="Bean.Counter"/>
        <jsp:setProperty name="counter" property="count" param="count"/>
        <%
                 out.println("Value of counter:"+counter.getCount()+"<BR>");
        %>
    </body>
</html>
