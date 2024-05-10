<%-- 
    Document   : CourseManager
    Created on : May 10, 2024, 2:26:24 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,javax.naming.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Manager</title>
    </head>
    <body>
        <h1>Course List</h1>
        <%
            String courseID = request.getParameter("courseID");
            String courseName = request.getParameter("courseName");
            String title = "You must input data";
            if (request.getParameter("Add") != null) //Check if submit button is pressed
            {
                if (courseID.equals("") &&  courseName.equals(""))

                {
                    out.print("<font color = \"red\">" + title + "</font>");
                } else
                {
                   DataProcessingPackage.CourseManager.Insert(courseID, courseName);
                }
            }
            if (request.getParameter("delete") != null)
            {
                DataProcessingPackage.CourseManager.Delete(courseID);
            }
            ResultSet rs = DataProcessingPackage.CourseManager.Select();
        %>
        <table border="solid">
            <tr>
                <td>Course ID</td>
                <td>Course Name</td>
                <td>Action</td>
            </tr>
            <%
                while(rs.next()){
            %>
            <tr>
                <td>
                    <%out.println(rs.getString("CourseID"));%>
                </td>
                <td>
                    <a href="CourseDetails.jsp?courseID=<%=rs.getString("courseID")%>"><%out.println(rs.getString("CourseName"));%></a>
                </td>
                <td>
                    <a href="CourseManager.jsp?delete&courseID=<%=rs.getString("courseID")%>">Delete</a>
                    <a href="EditCourse.jsp?courseID=<%=rs.getString("courseID")%>">Edit</a>
                </td>
            </tr>
            <%}%>
            
            
        </table>
        <p><a href="NewCourse.jsp">New Course</a></p>
        <hr>
        <p><a href="index.jsp">homepage</a></p>
    </body>
</html>
