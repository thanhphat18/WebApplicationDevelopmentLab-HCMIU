<%-- 
    Document   : profile
    Created on : Oct 10, 2015, 9:48:01 PM
    Author     : Gia Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
  boolean found = false;
   Cookie cookie = null;
   Cookie[] cookies = null;
   // Get an array of Cookies associated with this domain
   cookies = request.getCookies();
   if( cookies != null ){
     // out.println("<h2> Found Cookies Name and Value</h2>");
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
       if(cookie.getName().equals("name"))
       {
           found = true;
       out.print("<h1>Hello, " + cookie.getValue()+"</h1>");
       %>
       <br>
        <a href="feedback.jsp">Feedback</a> |
        <a href="logoutServlet">Log out</a>
        <%
       }
      }
      if(!found)
      {
       out.println("<h2>you are not login,please login or register</h2>");
      %>
        <a href="index.jsp">Login</a> |  
        <a href="register.jsp">Register</a> |  
        <%
      }
      
  }
%>
        
        
     
        
        
        
    </body>
</html>
