<%-- 
    Document   : index
    Created on : Oct 10, 2015, 10:40:22 PM
    Author     : Gia Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
     
        <a href="register.jsp">Register</a> 
        <hr>  
        <h3>Login</h3>
        <form action="loginServlet" method="post">
            User name: <input name="username" type="text"><br>
            Password: <input name="password" type="password"><br>
            <input type="submit" value="Sign in">
        </form>
    </body>
</html>
