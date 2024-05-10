<%-- 
    Document   : Update
    Created on : Mar 21, 2024, 3:03:42 PM
    Author     : Minh Tran Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,javax.naming.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View - Input - Delete - Modify</title>
    </head>
    <body>
        <h1><FONT COLOR="Blue">Testing View and Input Data into MySQL</FONT></h1>
        <hr>
        <h2><font color="Red">Insert data into MySQL database</font></h2>
        <p>Link: 
            <a href="CourseList.jsp">Course List</a>|
            <a href="StudentList.jsp">Student List</a>|
            <a href="Registration.jsp">Registration</a>
        <form action ="StudentList.jsp" method=post>
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="studentID"/></td>
                </tr>
                <tr>
                    <td>studentName</td>
                    <td><input type="text" name="studentName"/></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Add" name="Add"/></td>
                </tr>
            </table>
            
            <%
            //This code to input data
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
          
            //Delete data
            if (request.getParameter("delete") != null)
            {
                DataProcessingPackage.StudentManager.Delete(studentID);
            }
            %>        
            <hr>
            <h2><font color="Green">View data from database MySQL</font></h2>
            <%
            //View data from PostgreSQL
            ResultSet rs = DataProcessingPackage.StudentManager.Select();
            %>
            <table border="1" width="50%">
                
                <tr>
                    <td width="15%" >Student's ID</td>
                    <td width="25%">studentName</td>
                    <td width="10%">Delete</td>
                    <td width="10%">Modify</td>
                </tr>
                <%while (rs.next()) {%>
                <tr>
                    <td width="15%">
                        <%out.println(rs.getString("studentID"));%>
                    </td>
                    <td width="25%">
                        <%out.println(rs.getString("studentName"));%>
                    </td>
                  
                    <td><a href="StudentList.jsp?delete&studentID=<%=rs.getString("studentID")%>">Delete</a></td>
                    <td><a href="EditStudent.jsp?studentID=<%=rs.getString("studentID")%>">Update</a></td>
                </tr>
                
                <%   }%>
            
            </table>
        </form>
    </body>
</html>