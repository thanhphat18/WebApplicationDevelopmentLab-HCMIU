<%-- 
    Document   : Update
    Created on : Mar 21, 2024, 3:03:42 PM
    Author     : Minh Tran Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h2>Checking UserName and Password </h2>
        <% if (request.getParameter("Login") == null) {%>
        <form method="post" action="Login_code.jsp">
            <table width=100% align=center>
                <tr><td><strong>User Name: </strong></td><td><input type="text" name="username" size="25"/></td></tr>
                <tr><td><strong>Password: </strong></td><td><input type="password" size="25" name="password"/></td></tr>
                <tr><td></td><td><input type="submit" value="Login" name="Login"/> <input type="reset" value="Reset"/></td></tr>
            </table>
        </form>

        <% } else {
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");
                        if (username.equals("") && password.equals("")) {
                            out.print("You must enter value of username and password");
                        } else {
                            String sql = "Select * from users";
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                String connectionURL = "jdbc:mysql://localhost:3306/weblab5?user=root;password=admin";
                                Connection connection = DriverManager.getConnection(connectionURL, "root", "admin");
                                Statement stmt = connection.createStatement();
                                String mysql = sql;

                                ResultSet resultSet = stmt.executeQuery(mysql);


                                if (resultSet.next()) {
                                    if (resultSet.getString("username").equals(username) && resultSet.getString("password").equals(password)) {
                                        response.sendRedirect("StudentList.jsp");
                                    } else {
                                        out.println("The username or password is not correct, please type again!");
                                    }
                                }
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            }
                        }
                    }

        %>

    </body>
</html>
