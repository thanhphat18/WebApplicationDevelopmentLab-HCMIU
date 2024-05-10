<%-- 
    Document   : abc
    Created on : Oct 8, 2009, 2:08:44 PM
    Author     : Vo Duy Khoi
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
        <h1>Hello
            <%
            String str_user = request.getParameter("username");
            String str_pass = request.getParameter("password");
            out.println("Your account is:<br>Usr: " + str_user + "<br>Pass: " + str_pass);
            %>
        </h1>
    </body>
</html>
