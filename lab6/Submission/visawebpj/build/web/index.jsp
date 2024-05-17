<%-- 
    Document   : account
    Created on : May 11, 2024, 1:48:32 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Information</title>
    </head>
    <jsp:useBean id="accountBean" class="Bean.AccountBean" />
    <body >
        <h1 align="center">Please provide your account information</h1>
        <hr>
        <form action="./ShoppingServlet">
            <table align="center">
                <tr align="left">
                    <th>Name:</th>
                    <th><input type="text" name="name"></th>
                </tr>
                <tr align="left">
                    <th>Visa card number:</th>
                    <th><input type="text" name="visa" maxlength="16"></th>
                </tr>
                <tr align="left">
                    <th>Address:</th>
                    <th><input type="text" name="address"></th>
                </tr>
                <tr>
                    <th></th>
                    <th><input type="submit" value="Submit"></th>
                </tr>
            </table>
        </form>
        
    </body>
</html>
