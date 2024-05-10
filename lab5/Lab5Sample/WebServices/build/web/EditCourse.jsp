<%-- 
    Document   : Update
    Created on : Mar 21, 2024, 3:03:42 PM
    Author     : Minh Tran Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    
    
    <%
            String oldCourseID = "", oldname = "";
            
            ResultSet resultSet = DataProcessingPackage.CourseManager.Select(request.getParameter("CourseID"));
            if (resultSet.next())
            {
                oldCourseID = resultSet.getString("CourseID");
                oldname = resultSet.getString("CourseName");
            }
    %>
    <body>
        <h2>Update data into table Course</h2>
        <form method=post action="EditCourse.jsp">
            <table>
                <tr>
                    <td>Course's ID</td>
                    <td><input type="text" name="CourseID" value=<%=oldCourseID%>></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="CourseName" value=<%=oldname%>></td>
                </tr>
               
                <tr>
                    <td><input type="submit" name="Update" value="Update"></td>
                    <td><input type="reset" value="Cancel"></td>
                </tr>
            </table>
        </form>
    
    <%
            if (request.getParameter("Update") != null)
            {
                DataProcessingPackage.CourseManager.Update(oldCourseID, request.getParameter("CourseID") , request.getParameter("CourseName"));

                response.sendRedirect("CourseList.jsp");
            }
    %>
    </body>
</html>