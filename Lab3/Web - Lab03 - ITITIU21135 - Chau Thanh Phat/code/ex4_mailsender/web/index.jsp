<%-- 
    Document   : index
    Created on : Apr 11, 2024, 1:56:08 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <h1>School of Computer Science & Engineering</h1>
    <hr>
    <article>
        <h2>Register Form</h2>
        <form action="EmailServlet" method="post">
            <table>
                <tr>
                    <th align="left">
                        <label for="fullname">Full Name:&nbsp;</label>
                    </th>
                    <th align="left">
                        <input type="text" id="fullname" name="Fullname" ><br>
                    </th>
                </tr>
                <tr>
                    <th align="left">
                        <label for="id">ID:</label>
                    </th>
                    <th align="left">
                        <input type="text" id="id" name="ID"><br>
                    </th>
                </tr>
                <tr>
                    <th align="left">
                        <label for="email">Email:</label>
                    </th>
                    <th align="left">
                        <input type="email" id="mail" name="Mail"><br>
                    </th>
                </tr>
                <tr>
                    <th align="left">
                        <label for="gender">Gender:</label>
                    </th>
                    <th align="left">
                        <input type="radio" name="Gender" value="male">Male
                        <input type="radio" name="Gender" value="female">Female
                    </th>
                </tr>
                <tr>
                    <th><label for="field">Field of Study:</label></th>
                    <th align="left"><select name="Field of Study" size="1">
                        <option value="CS">CS</option>
                        <option value="DS">DS</option>
                        <option value="CN">CN</option>
                        <option value="NE">NE</option>
                        <option value="Others">Others</option>
                    </select></th>
                </tr>
                <tr>
                    <th>
                        <label for="subj">List of subjects:</label>
                    </th>
                    <th align="left">
                        <input type="checkbox" name="List of Subjects" value="Principle of EE1">Principle of EE1 <br>
                        <input type="checkbox" name="List of Subjects" value="Computer Network">Computer Network <br>
                        <input type="checkbox" name="List of Subjects" value="Web Application Development">Web Application Development <br>
                        <input type="checkbox" name="List of Subjects" value="Object Oriented Programming">Object Oriented Programming <br>
                        <input type="checkbox" name="List of Subjects" value="Computer Graphics">Computer Graphics <br>
                    </th>
                </tr>
                <tr>
                    <th align="left">
                        <label for="comment">Comment:</label>
                    </th>
                    <th align="left">
                        <textarea name="Comment" cols="50" rows="5"></textarea>
                    </th>
                </tr>
                <tr>
                    <th>
                        <input type="submit">
                    </th>
                    <th align="left">
                        <input type="reset" value="Cancel">
                    </th>
                </tr>
            </table>
        </form>
    </article>
</body>
</html>
