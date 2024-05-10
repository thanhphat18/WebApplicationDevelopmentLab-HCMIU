<%-- 
    Document   : index
    Created on : Apr 12, 2024, 4:33:13 PM
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
        <h1>Email</h1>
        <form  action="./rundevilrun" method="POST">
            <table>
                <tr>
                    <td>
                        To:
                    </td>
                    <td>
                        <input type="text" id="to" name="to">
                    </td>
                </tr>
                <tr>
                    <td>
                        Subject:
                    </td>
                    <td>
                        <input type="text" id="subject" name="subject">
                    </td>
                </tr>
                <tr>
                    <td>
                        Content
                    </td>
                    <td>
                        <textarea name="body" cols="60" rows="15"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

