<%-- 
    Document   : PersonalInfor
    Created on : Mar 2, 2009, 11:03:35 AM
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
    <body bgcolor="pink">
        <h2><center>Personal Information</center></h2>
        <hr>
            
        <form action="GetInfor" method="POST">
        
        <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="ID"/></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" size="50"/></td>
        </tr>
         <tr>
            <td>Email</td>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                Male<input type="radio" name="gender" value="Man" checked="checked" />
                Female<input type="radio" name="gender" value="Female" />
            </td>
        </tr>
        <tr>
            <td>Major</td>
            <td><select name="Type">
                    <option>Computer Science</option>
                    <option>Electrical Engineering</option>
                    <option>Business Administration</option>
                    <option>Biological Engineering</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Interesting Field</td>
            <td><textarea rows="5" name="inf" cols="50"></textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="Insert" /></td>
            <td><input type="reset" value="Cancel" /></td>
        </tr>
        </table>
        
        </form>
        
    </body>
</html>
