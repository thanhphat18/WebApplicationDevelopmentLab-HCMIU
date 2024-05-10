/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DataProcessingPackage;

import java.sql.*;
import java.util.*;
import com.mysql.jdbc.Driver;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author Mitdacit
 */
public class StudentManager
{
    public static ResultSet Select(String studentID)
    {
        String sql = "Select * from student where studentID='" + studentID + "'";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     public static ResultSet Select()
    {
        String sql = "Select * from student";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     
    public static void Update(String oldStudentID, String studentID, String studentName)
    {
        String sql =  "update student set studentID='" + studentID + "', studentName='" + studentName + "' where studentID ='"+ oldStudentID +"'";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

    public static void Insert( String studentID, String studentName)
    {
        String sql = "insert into student(StudentID, studentName) values('" + studentID + "','" + studentName + "')";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

    public static void Delete(String studentID)
    {
        String sql = "DELETE FROM student WHERE StudentID= '" + studentID + "'";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

}
