<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Login Page</h1>
        <hr><!-- comment -->
        <form action="./loginservlet">
            <table>
                <tr>
                    <th>Username:</th>
                    <th><input type="text" name="username"></th>
                </tr>
                <tr>
                    <th>Password:</th>
                    <th><input type="password" name="password"></th>
                </tr>
                <tr>
                    <th><input type="submit" value="submit" /></th>
                </tr>
            </table>
        </form>
    </body>
</html>
