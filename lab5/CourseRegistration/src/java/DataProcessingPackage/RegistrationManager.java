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
public class RegistrationManager {
    
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
     public static ResultSet SelectTwo(String courseID)
     {
         String sql ="SELECT student.studentid, student.studentname, studentcourse.courseid  FROM `studentcourse`, `student` where studentcourse.studentid=student.studentid and studentcourse.courseid='"+courseID+"';";
         return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
     }
    
     public static ResultSet SelectThree(String studentID)
     {
         String sql ="SELECT studentcourse.studentid, studentcourse.courseid, course.coursename FROM `studentcourse`, `course` where  studentcourse.studentid='"+studentID+ "' and studentcourse.courseid=course.courseid;";
         return DataAccessPackage.ConnectionManager.ExecuteQuery(sql);
     }
    
    public static ResultSet SelectForStudent(String courseid)
    {
        String sql = "SELECT student.studentid, student.studentname, course.courseid, course.coursename  FROM `studentcourse`, `student`, `course` where studentcourse.studentID = student.studentID  and studentcourse.courseid = '"+courseid+"'";
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
