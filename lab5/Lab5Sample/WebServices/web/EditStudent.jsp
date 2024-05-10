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
            String oldstudentID = "", oldname = "";
            
            ResultSet resultSet = DataProcessingPackage.StudentManager.Select(request.getParameter("studentID"));
            if (resultSet.next())
            {
                oldstudentID = resultSet.getString("studentID");
                oldname = resultSet.getString("studentName");
            }
    %>
    <body>
        <h2>Update data into table student</h2>
        <form method=post action="EditStudent.jsp">
            <table>
                <tr>
                    <td>Student's ID</td>
                    <td><input type="text" name="studentID" value=<%=oldstudentID%>></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="studentName" value=<%=oldname%>></td>
                </tr>
               
                <tr>
                    <td><input type="submit" name="Update" value="Update"></td>
                    <td><input type="reset" value="Cancel"></td>
                </tr>
            </table>
        </form>
    
    <%   //Check if user press submit button
            if (request.getParameter("Update") != null)
            {
                DataProcessingPackage.StudentManager.Update(oldstudentID, request.getParameter("studentID") , request.getParameter("studentName"));
                response.sendRedirect("StudentList.jsp");
            }
    %>
    </body>
</html>