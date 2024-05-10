<%-- 
    Document   : EditCourse
    Created on : May 10, 2024, 2:53:07 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Course</title>
    </head>
    <%
        String oldCourseID = "", oldName="";
        ResultSet rs = DataProcessingPackage.CourseManager.Select(request.getParameter("courseID"));
        if(rs.next()){
            oldCourseID = rs.getString("CourseID");
            oldName = rs.getString("CourseName");
        
        }
    %>
    <body>
        <h1>Update data into table Course</h1>
        <%
            if(request.getParameter("Update")==null){
        %>
        <form method="post" action="EditCourse.jsp">
            <table>
                <tr style="display: none;">
                    <td>Old course ID:</td>
                    <td><input type="text" name="cidold" value="<%=oldCourseID%>" readonly ></td>
                </tr>
                <tr>
                    <td>Course ID:</td>
                    <td><input type="text" name="cid" ></td>
                </tr>
                <tr>
                    <td>Course Name:</td>
                    <td><input type="text" name="cname" ></td>
                </tr>
                <tr>
                    <td><input type="submit" name="Update" value="Update"></td>
                    
                </tr>
            </table>
        </form>
        <%
            }else {
                String cold = request.getParameter("cidold");
                String cid = request.getParameter("cid");
                String cname = request.getParameter("cname");
                if(cid.equals("") && cname.equals("")){
                    out.println("Input updated info");
                    out.println("<a href=\"CourseManager.jsp\"><-Back</a>");
                }else{
                    try{
                        ResultSet course = DataProcessingPackage.CourseManager.Select();
                        if(course.next()){
                            DataProcessingPackage.CourseManager.Update(cold,cid,cname);
                            response.sendRedirect("CourseManager.jsp");
                        }
                    }catch(SQLException ex){
                        ex.printStackTrace();
                    }
                }
            }
        %>
    </body>
</html>
