<%-- 
    Document   : index
    Created on : Feb 16, 2009, 9:54:21 AM
    Author     : Sinh Nguyen Van
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="styles.css" />
        <STYLE TYPE = "text/css">
		H1.titlepage { text-align: center;
               color:red }

	</STYLE>

    </head>
    <body>
        <h2> Hello all of you!</h2>
      <p> My name SInh</p>
       <H1 class=titlepage>My name is Sinh!</H1>
       <h2>Hello World!</h2>
       <h3>This is lab section of Web Application Development</h3>
       <a href="hobby.html">My Hobby</a>
       <br><br>
       <%
       out.print("Test JSP Page <br>");
       
       for(int i=0;i<=5;i++)
           out.print("<font size= "+i+">Nguyen Van Sinh </font>");
       %>
    </body>
</html>
