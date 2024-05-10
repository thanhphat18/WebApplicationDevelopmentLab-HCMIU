<%-- 
    Document   : ThreeParams.jsp
    Created on : Apr 11, 2024, 12:46:06 PM
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
        <h1>Collect Three Parameters</h1>
        <form action="./GetThreeParam" method="GET">
            <table>
                <tr>
                    <td>
                        First Parameter:
                    </td>
                    <td>
                        <input type="text" name="p1">
                    </td>
                </tr>
                <tr>
                    <td>
                        Second Parameter:
                    </td>
                    <td>
                        <input type="text" name="p2">
                    </td>
                </tr>
                <tr>
                    <td>
                        Third Parameter:
                    </td>
                    <td>
                        <input type="text" name="p3">
                    </td>
                </tr>
                <tr>
                    <td spancols="2">
                        <input type="submit"
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
