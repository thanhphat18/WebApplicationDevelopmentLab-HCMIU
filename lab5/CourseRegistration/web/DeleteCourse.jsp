<%-- 
    Document   : DeleteCourse
    Created on : May 10, 2024, 5:00:29 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Course</title>
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
            response.sendRedirect("StudentsDetails.jsp");
        %>
    </body>
</html>
