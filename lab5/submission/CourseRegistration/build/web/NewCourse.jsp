<%-- 
    Document   : NewCourse
    Created on : May 10, 2024, 2:29:36 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Course</title>
    </head>
    <body>
        <h1>Input new course information here.</h1>
        <form action="CourseManager.jsp" methos="post">
            <table>
                <tr>
                    <td>Course ID:</td>
                    <td><input type="text" name="courseID"/></td>
                </tr>
                <tr>
                    <td>Course Name:</td>
                    <td><input type="text" name="courseName"/></td>
                </tr>
               
                <tr>
                    <td><a href="CourseManager.jsp"><button type="button">Cancel</button></a></td>
                    <td><input type="Submit" value="Add" name="Add"/></td>
                    
                </tr>
            </table>
            
        </form>
    </body>
</html>
