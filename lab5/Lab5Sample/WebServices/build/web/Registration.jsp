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
        <form action ="Registration.jsp" method="get">
            <table>
                <tr>
                    <td>Student</td>
                    <td>

                        <select id="studentID" name="studentid">

                           
                            <%

                                        ResultSet students = DataProcessingPackage.StudentManager.Select();

                                        while (students.next())
                                        {

                                            String sname = students.getString("studentName");

                                            String sid = students.getString("studentID");

                            %>

                            <option value="<%= sid%>"> <% out.println(sname);%> </option>

                            <%          }%>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td>

                        <select id="courseid" name="courseid">

                          
                            <%

                                        ResultSet courses = DataProcessingPackage.CourseManager.Select();

                                        while (courses.next())
                                        {

                                            String cname = courses.getString("coursename");

                                            String cid = courses.getString("courseid");

                            %>

                            <option value="<%= cid%>"> <% out.println(cname);%></option>

                            <%          }%>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="Submit" value="Add" name="Add"/></td>
                </tr>
            </table>

            <%
            //This code to input data
            String title = "You must select data";
            if (request.getParameter("Add") != null)
            {
                if (request.getParameter("studentid").equals("") && request.getParameter("Courseid").equals(""))
                {
                    out.print("<font color = \"red\">" + title + "</font>");
                }
                else
                {
                    int isInserted =  DataProcessingPackage.RegistrationManager.Insert(request.getParameter("studentid"), request.getParameter("courseid"));
                    
                    if(isInserted == 0)
                    {
                            out.print("<font color = \"red\">" + "This student already registered for selected course" + "</font>");
                    }

                }
            }

            //Delete data
            if (request.getParameter("action").equals("delete")) {
                DataProcessingPackage.RegistrationManager.Delete(request.getParameter("studentID"), request.getParameter("courseID"));
            }
            %>        
            <hr>
            <h2><font color="Green">View data from database MySQL</font></h2>
            <%
            //View data from PostgreSQL
            ResultSet rs = DataProcessingPackage.RegistrationManager.Select();
            %>
            <table border="1" width="50%">

                <tr>
                    <td width="15%" >StudentName</td>
                    <td width="25%">Course</td>
                    <td width="10%">Delete</td>                    
                </tr>
                <%while (rs.next()) {%>
                <tr>
                    <td width="15%">
                        <%out.println(rs.getString("StudentName"));%>
                    </td>
                    <td width="25%">
                        <%out.println(rs.getString("CourseName"));%>
                    </td>

                    <td><a href="Registration.jsp?action=delete&studentID=<%=rs.getString("studentID")%>&courseID=<%= rs.getString("courseID")%> ">Delete</a></td>

                </tr>

                <%   }%>

            </table>
        </form>
    </body>
</html>