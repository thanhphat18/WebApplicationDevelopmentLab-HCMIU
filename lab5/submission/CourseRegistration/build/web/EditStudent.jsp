<%-- 
    Document   : EditStudent
    Created on : May 10, 2024, 1:52:09 AM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <%
            String oldstudentID = "", oldname = "";
            String reqID = request.getParameter("studentID");
            
            ResultSet resultSet = DataProcessingPackage.StudentManager.Select(reqID);
            if (resultSet.next())
            {
                oldstudentID = resultSet.getString("studentID");
                oldname = resultSet.getString("studentName");
            }
    %>
    <body>
        <h1>Update data into table student</h1>
        <%
            if(request.getParameter("Update")==null){
        %>
        <form method="post" action="EditStudent.jsp">
            <table>
                <tr style="display:none;">
                    <td>Old student :</td>
                    <td><input type="text" name="siold" value="<%=oldstudentID%>"></td>
                </tr>
                <tr>
                    <td>Student ID:</td>
                    <td><input type="text" name="sid"></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="sname"></td>
                </tr>
               
                <tr>
                    <td><input type="submit" value="Update" name="Update"></td>
                    <td><input type="reset" value="Cancel"></td>
                </tr>
            </table>
        <% 
            }else {
                String sold = request.getParameter("siold");
                String sid = request.getParameter("sid");
                String sname = request.getParameter("sname");
                if(sid.equals("") && sname.equals("")){
                    out.println("Input updated info");
                    out.println("<a href=\"StudentManager.jsp\"><-Back</a>");
                }else{
                    try{
                        ResultSet students = DataProcessingPackage.StudentManager.Select();
                        if(students.next()){
                            DataProcessingPackage.StudentManager.Update(sold,sid,sname);
                            response.sendRedirect("StudentManager.jsp");
                        }
                    }catch(SQLException ex){
                        ex.printStackTrace();
                    }
                }
            }
        %>
        </form>
    
    </body>
</html>
