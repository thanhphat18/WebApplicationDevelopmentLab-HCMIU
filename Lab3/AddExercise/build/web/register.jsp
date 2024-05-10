<%-- 
    Document   : register
    Created on : Oct 10, 2015, 10:38:31 PM
    Author     : Gia Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <a href="index.jsp">Login</a> 
        
        <hr>  
        <h3>Register profile</h3>
        <form action="registerServlet" method="post">
            User name: <input name="username" type="text"><br>
            Password: <input name="password" type="password"><br>
            <input type="submit" value="Sign up">
        </form>
    </body>
</html>

