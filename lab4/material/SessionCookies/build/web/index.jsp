<%-- 
    Document   : index
    Created on : Mar 8, 2009, 10:13:19 AM
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
    <body bgcolor="pink">
        <h2>Print out the cookies</h2><hr>
        <form action="CookieExample">
            <table>
                <tr>
                    <td>
                        Input Cookie Name:
                    </td>
                    <td>
                        <input type="text" name="cookieName">
                    </td>
                </tr>
                <tr>
                    <td>
                        Input Cookie Value:
                    </td>
                    <td>
                        <input type="text" name="cookieValue">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                    <input type="Submit" value="Submit"></input>    
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
