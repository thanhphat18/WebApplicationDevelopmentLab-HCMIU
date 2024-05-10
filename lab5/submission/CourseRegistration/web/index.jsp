<%-- 
    Document   : index
    Created on : May 9, 2024, 10:17:44 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Course Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Course Registration</h1>
        <%
            if(request.getParameter("search")==null){
        %>
        <form method="post" action="index.jsp">
            <table>
                <tr>
                    <td>Student ID:</td>
                    <td><input type="text" name="sid"></td>
                    <td><input type="submit" value="search" name="search"></td>
                </tr>
            </table>
        </form>
        <%
            } else {
                String sid = request.getParameter("sid");
                if(sid.equals("")){
                    out.println("Input wanted student ID. <a href=\"index.jsp\"><-BACK</a>");
                } else {
                    try{
                        ResultSet students = DataProcessingPackage.StudentManager.Select();
                        while(students.next()){
                            if(students.getString("StudentID").equals(sid)){
                                session.setAttribute("user",sid);
                                response.sendRedirect("StudentsDetails.jsp");
                            }
                        }
                    } catch(SQLException ex){
                        ex.printStackTrace();
                    }
                }
            }
        %>
        <h3>Manager:</h3>
        <ul>
            <li><a href="StudentManager.jsp">Student Manager</a></li>
            <li><a href="CourseManager.jsp">Course Manager</a></li>
        </ul>
    </body>
</html>
