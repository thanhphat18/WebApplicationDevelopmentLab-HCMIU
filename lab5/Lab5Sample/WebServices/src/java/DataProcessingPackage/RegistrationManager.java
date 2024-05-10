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
public class RegistrationManager
{
    public static ResultSet SelectByStudent(String studentID)
    {
        String sql = "Select * from StudentCourse where StudentID='" + studentID + "'";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     public static ResultSet SelectByCourse(String courseID)
    {
        String sql = "Select * from StudentCourse where CourseID='" + courseID + "'";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

     public static ResultSet Select()
    {
        String sql = "SELECT student.studentid, student.studentname, course.courseid, course.coursename  FROM `studentcourse`, `student`, `course` where studentcourse.studentID = student.studentID  and studentcourse.courseid = course.courseid";
        return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
    }

   
    public static int Insert( String studentID, String courseID)
    {
        String sql = "insert into StudentCourse(StudentID, CourseID) values('" + studentID + "','" + courseID + "')";
        return DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }

    public static void Delete(String studentID, String courseID)
    {
        String sql = "DELETE FROM StudentCourse WHERE StudentID= '" + studentID + "' AND CourseID= '" + courseID + "'";
        DataAccessPackage.ConnectionManager.ExecuteUpdate(sql);
    }


}
