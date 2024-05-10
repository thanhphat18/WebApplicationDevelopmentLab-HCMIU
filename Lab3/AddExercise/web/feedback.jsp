<%-- 
    Document   : feedback
    Created on : Oct 10, 2015, 10:39:41 PM
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
       
        <a href="logoutServlet">Log out</a>
        <hr>  
        <h3> Send feedback</h3>
        <form action="feedbackServlet" method="post">
            Content:</br>
            <textarea name="fb-content" rows="6" cols="40"></textarea><br>
            <input type="submit" value="Send">
        </form>
    </body>
</html>