<%-- 
    Document   : NewStudent
    Created on : May 10, 2024, 1:38:05 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New student</title>
    </head>
    <body>
        <h1>Input new student information here.</h1>
        <form action="StudentManager.jsp" methos="post">
            <table>
                <tr>
                    <td>Student ID:</td>
                    <td><input type="text" name="studentID"/></td>
                </tr>
                <tr>
                    <td>Student Name:</td>
                    <td><input type="text" name="studentName"/></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Add" name="Add"/></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
