<%-- 
    Document   : RegisterForm
    Created on : Feb 21, 2009, 5:01:28 PM
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
        <h1>School of Computer Science & Engineering</h1>
        <hr>
        <h2>Register Form</h2>
    <form action="GetValue.jsp" method="POST">
    <table>
        <tr>
            <td>Full Name</td>
            <td><input type="text" name="Name" size="30"/></td>
        </tr>
        <tr></tr>
        <tr>
            <td>ID</td>
            <td><input type="text" name="ID" size="20"/></td>
        </tr>
        <tr></tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" size="30"/></td>
        </tr>
        <tr></tr>
        <tr>
            <td>Gender</td>
            <td><input type="radio" name="sex" value="Man" checked="checked" />Male
                <input type="radio" name="sex" value="Female" />Female
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>Fiel of study</td>
            <td>
                <select name="Type">
                    <option>CS</option>
                    <option>IM</option>
                    <option>EE</option>
                    <option>BA</option>
                    <option>BE</option>
                </select></td>
        </tr>
            <tr></tr> 
        <tr>
            <td>List of subjects</td>
            <td>
                <input type="checkbox" name="c1" >Principle of EE 1<br>
                <input type="checkbox" name="c1" >Computer Network<br>
                <input type="checkbox" name="c1" >Web Application Development<br>
                <input type="checkbox" name="c1" >Object Oriented Programming<br>
                <input type="checkbox" name="c1" >Computer Graphics<br>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>Comments</td>
            <td>
                <textarea cols="50" rows="5" name="comment"></textarea>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td><input type="submit" value="Submit" /></td>
            <td><input type="reset" value="Reset" /></td>
        </tr>
    </table>
    
</form>
    </body>
</html>
