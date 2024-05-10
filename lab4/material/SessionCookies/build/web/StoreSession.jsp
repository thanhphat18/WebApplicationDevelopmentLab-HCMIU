<%-- 
    Document   : StoreSession
    Created on : Mar 8, 2009, 5:57:53 PM
    Author     : Sinh Nguyen Van
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*, javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Store username and password to session</h2>
        <form>
            Username<input type="text" name ="username"><br>
            Password<input type="password" name ="password"><br>
            <input type="Submit" value="Submit"></input>
        </form>
            <%
            String UserName = request.getParameter("username");
            String PassWord = request.getParameter("password");
            session.setAttribute("username", UserName);
            session.setAttribute("password", PassWord);
            %>
            Welcome <%=UserName%>!<br>
            Your Password: <%=PassWord%>
       
    </body>
</html>
