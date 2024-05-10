<%-- 
    Document   : GetValue
    Created on : Mar 4, 2009, 1:27:47 PM
    Author     : Sinh Nguyen Van
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Get value</h2>
        <%
         String value1 = request.getParameter("param1");
         out.print(value1 + "<br>");
            
         String value2 = request.getParameter("param2");
           out.print(value2+ "<br>");  
         String value3 = request.getParameter("param3");
           out.print(value2+ "<br>");  
        %>
</html>
