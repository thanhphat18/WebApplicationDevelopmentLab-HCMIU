<%-- 
    Document   : GetResult
    Created on : Feb 27, 2009, 8:36:56 AM
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
        <h2>Result page</h2>
        <%
            String value = request.getParameter("tx1");
            out.print("Hello "+value+"!");
        %>
    </body>
</html>
