<%-- 
    Document   : index
    Created on : Apr 18, 2024, 10:55:12 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Print out the cookies</h1>
        <hr><!-- comment -->
        <form action="./CookieExample">
            <table>
                <tr>
                    <td>Input Cookie Name:</td>
                    <td><input type="text" name="cname"></td>
                </tr>
                <tr>
                    <td>Input Cookie Value:</td>
                    <td><input type="text" name="cvalue"></td>
                </tr>
                <tr>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
