<%-- 
    Document   : StudentManager
    Created on : May 10, 2024, 1:26:44 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,javax.naming.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Manager</title>
    </head>
    <body>
        <h1>Student List</h1>
        <%
            String studentID = request.getParameter("studentID");
            String studentName = request.getParameter("studentName");
            String title = "You must input data";
            if (request.getParameter("Add") != null) //Check if submit button is pressed
            {
                if (studentID.equals("") &&  studentName.equals(""))

                {
                    out.print("<font color = \"red\">" + title + "</font>");
                } else
                {
                   DataProcessingPackage.StudentManager.Insert(studentID, studentName);
                }
            }
            if (request.getParameter("delete") != null)
            {
                DataProcessingPackage.StudentManager.Delete(studentID);
            }
            ResultSet rs = DataProcessingPackage.StudentManager.Select();
        %>
        <table border="solid">
            <tr>
                <td>Student ID</td>
                <td>Student Name</td>
                <td>Action</td>
            </tr>
            <%
                while(rs.next()){
            %>
            <tr>
                <td>
                    <%out.println(rs.getString("StudentID"));%>
                </td>
                <td>
                    <%out.println(rs.getString("StudentName"));%>
                </td>
                <td>
                    <a href="StudentManager.jsp?delete&studentID=<%=rs.getString("studentID")%>">Delete</a>
                    <a href="EditStudent.jsp?studentID=<%=rs.getString("studentID")%>">Edit</a>
                </td>
            </tr>
            <%}%>
            
            
        </table>
        <p><a href="NewStudent.jsp">New Student</a></p>
        <hr>
        <p><a href="index.jsp">homepage</a></p>
    </body>
</html>
