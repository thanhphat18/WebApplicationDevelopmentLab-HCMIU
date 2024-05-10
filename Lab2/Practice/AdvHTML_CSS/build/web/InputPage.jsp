<%-- 
    Document   : InputPage
    Created on : Feb 20, 2009, 1:46:10 PM
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
        <h2>Please Input The Value!</h2>
        <form method="post" action="GetValue.jsp" name="f1">
            <input type="text" name = "tx1"><br>
            Male:<input type="radio" name="gender" value="M"><br>
            Female:<input type="radio" name="gender" value="F"><br>   
            
            
                <input type="checkbox" name="c1" value="Principle of EE 1" ><br>
                <input type="checkbox" name="c1" value="Computer Network" ><br>
                <input type="checkbox" name="c1" value="Web Application Development" ><br>
                <input type="checkbox" name="c1" value="Object Oriented Programming" ><br>
                <input type="checkbox" name="c1" value="Computer Graphics" ><br>
            
            <input type="Submit" value="Submit">
        </form>
    </body>
</html>
