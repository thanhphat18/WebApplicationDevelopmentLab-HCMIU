<%-- 
    Document   : CourseDetails
    Created on : May 10, 2024, 2:35:34 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course's Details</title>
    </head>
    <body>
        
        <h1>Course's Details</h1>
        <%
            String id="", name="";
            ResultSet rs = DataProcessingPackage.CourseManager.Select(request.getParameter("courseID"));
            if (rs.next()){
                id = rs.getString("CourseID");
                out.print("<p>CourseID:" + id+"</p>");
                name = rs.getString("CourseName");
                out.print("<p>CourseName:" + name+"</p>");
            }
        %>
        <hr>
        <%
            ResultSet rs2 = DataProcessingPackage.RegistrationManager.SelectTwo(id);
        %>
        <table border="solid">
            <tr>
                <td>Student ID</td>
                <td>Student Name</td>
                <td>Action<td>
            </tr>
            <%
                while(rs2.next()){
            %>
            <tr>
                
                <td>
                    <%
                        out.println(rs2.getString("StudentID"));
                    %>
                </td>
                <td>
                    <%
                        out.println(rs2.getString("StudentName"));
                    %>
                </td>
                <td>
                    <a href="DeleteStudent.jsp?courseid=<%=id%>&studentid=<%=rs2.getString("StudentID")%>">
                        Remove
                    </a>
                </td>
            </tr>
            <%}%>
        </table>
        <hr>
        <p><a href="index.jsp">Homepage.</a></p>
    </body>
</html>
