<%-- 
    Document   : DeleteStudent
    Created on : May 10, 2024, 5:49:18 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Student</title>
    </head>
    <%
        String cid = request.getParameter("courseid");
        String sid = request.getParameter("studentid");
    %>
    <body>
        <%
            out.println(cid);
            out.println(sid);
            DataProcessingPackage.RegistrationManager.Delete(sid,cid);
            response.sendRedirect("CourseManager.jsp");
        %>
    </body>
</html>
