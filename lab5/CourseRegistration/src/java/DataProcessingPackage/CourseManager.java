/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataProcessingPackage;
import java.sql.*;


/**
 *
 * @author thanhphatchau
 */
public class CourseManager {
    
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
