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
public class CourseManager
{
    public static ResultSet Select(String CourseID)
    {
        String sql = "Select * from Course where CourseID='" + CourseID + "'";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     public static ResultSet Select()
    {
        String sql = "Select * from Course";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     
    public static void Update(String oldCourseID, String CourseID, String CourseName)
    {
        String sql =  "update Course set CourseID='" + CourseID + "', CourseName='" + CourseName + "' where CourseID ='"+ oldCourseID +"'";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

    public static void Insert( String CourseID, String CourseName)
    {
        String sql = "insert into Course(CourseID, CourseName) values('" + CourseID + "','" + CourseName + "')";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

    public static void Delete(String CourseID)
    {
        String sql = "DELETE FROM Course WHERE CourseID= '" + CourseID + "'";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }


}
