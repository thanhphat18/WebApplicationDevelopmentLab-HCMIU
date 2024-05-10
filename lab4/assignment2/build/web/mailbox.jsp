<%-- 
    Document   : mailbox
    Created on : Apr 19, 2024, 12:49:19 AM
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
        <h1>Register Mail Account</h1>
        <hr><!-- comment -->
        <form action="./readInfo">
            <table>
                <tr>
                    <td>Your Name:</td>
                    <td><input type="text" name="fname" placeholder="First name"><input name="lname" placeholder="Last name"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="female">Female</td>
                </tr>
                <tr>
                    <td>Birthday:</td>
                    <td><input type="date" name="dob"></td>
                </tr>
                <tr>
                    <td>Major:</td>
                    <td>
                        <select name="major" size="1">
                            <option value="Computer Science">Computer Science</option>
                            <option value="Data Science">Data Science</option>
                            <option value="Network Engineering">Network Engineering</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>I live in:</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>Select ID:</td>
                    <td><input type="email" name="mail" placeholder="your_id@gmail.com"></td>
                </tr>
                <tr>
                    <td><input type="submit"></td>
                    <td><input type="reset" value="cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
