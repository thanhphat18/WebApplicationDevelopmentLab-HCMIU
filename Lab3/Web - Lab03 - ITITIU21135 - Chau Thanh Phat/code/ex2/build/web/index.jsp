<%-- 
    Document   : index
    Created on : Apr 11, 2024, 1:18:37 PM
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
        <h1>Personal Information</h1>
        <hr>
        <form action="./GetInfor" method="GET">
            <table>
                <tr>
                    <td>
                        ID:
                    </td>
                    <td>
                        <input type="text" name="id">
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <input type="email" name="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender:
                    </td>
                    <td>
                        <input type="radio" name="gender" value="male">Male
                        <input type="radio" name="gender" value="female">Female
                    </td>
                </tr>
                <tr>
                    <td>
                        Major:
                    </td>
                    <td>
                        <select name="major" size="1">
                            <option>Business Administration</option>
                            <option>Information Technology</option>
                            <option>Biotechnologies</option>
                            <option>English Literature</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Interesting field:
                    </td>
                    <td>
                        <textarea name="interest" rows="4" cols="50"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Insert">
                    </td>
                    <td>
                        <input type="reset" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
