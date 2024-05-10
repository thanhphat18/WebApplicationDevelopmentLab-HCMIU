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
