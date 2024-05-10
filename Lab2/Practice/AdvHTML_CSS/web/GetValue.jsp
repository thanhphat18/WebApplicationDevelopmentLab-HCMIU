<%-- 
    Document   : GetValue
    Created on : Feb 20, 2009, 1:46:26 PM
    Author     : Sinh Nguyen Van
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Result page</h2>
        <%
        //Get value from text-box
        String value = request.getParameter("tx1");
            out.print("Hello "+value+"!<br>");
        
        //Get value from radio button    
        String radioButton = request.getParameter("gender");
            out.print("The gender is: "+radioButton+"<br>");
        
        //Get value from check-box button
        String[] courses;
        courses = request.getParameterValues("c1");
          if (courses != null)
                 {
                   out.print("The course: <br>"); 
                   for (int i = 0; i < courses.length; i++)
                             {
                               out.println (courses[i]+"<br>");
                             }
                     }   else out.println ("<b>none<b>");
        %>
    </body>
</html>
