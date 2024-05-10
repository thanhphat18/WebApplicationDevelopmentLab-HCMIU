<%-- 
    Document   : StudentsDetails
    Created on : May 9, 2024, 10:39:28 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,javax.naming.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student's Details</title>
    </head>
    <body>
        <h1>Student's Details</h1>
        <%
            String id=(String)session.getAttribute("user");
            out.print("<p>Student ID: "+id+"</p>");
            String sname="";
            ResultSet students = DataProcessingPackage.StudentManager.Select(id);
            while(students.next()){
            sname = students.getString("StudentName");
            }
            out.print("<p>Student Name:" + sname+"</p>");
            
        %>
        <hr>
        <h2>Select Course</h2>
        <%
            if(request.getParameter("add")==null){
        %>
        <form action="StudentsDetails.jsp" method="post">
            <table>
                <tr>
                    <td>Course:</td>
                    <td>
                        <select name="cid">
                            <%
                                ResultSet courses = DataProcessingPackage.CourseManager.Select();
                                while(courses.next()){
                            %>
                            <option value="<%=courses.getString("CourseID")%>"><%=courses.getString("CourseName")%></option>
                            <%}%>
                        </select>
                    </td>
                    <td>
                        <input type="submit" name="add" value="add">
                    </td>
                </tr>
            </table>
        </form>
        <%
            } else {
                String cid = request.getParameter("cid");
                DataProcessingPackage.RegistrationManager.Insert(id,cid);
                response.sendRedirect("StudentsDetails.jsp");
            }
        %>
        <h2>Register Course:</h2>
        <table border="solid">
            <tr>
                <td>Course ID</td>
                <td>Course Name</td>
                <td>Action</td>
            </tr>
            <%
                ResultSet cregist = DataProcessingPackage.RegistrationManager.SelectThree(id);
                while(cregist.next()){
            %>
            <tr>
                <td>
                    <%=cregist.getString("courseid")%>
                </td>
                <td>
                    <%=cregist.getString("coursename")%>
                </td>
                <td>
                    <a href="DeleteCourse.jsp?studentid=<%=id%>&courseid=<%=cregist.getString("courseid")%>">Remove</a>
                </td>
            </tr>
            <%}%>
        </table>
        <hr>
        <a href="index.jsp">Homepage</a>
    </body>
</html>
