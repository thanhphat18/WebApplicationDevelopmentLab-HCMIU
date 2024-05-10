/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessPackage;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thanhphatchau
 */
public class ConnectionManager
{
    //private static String connectionString = "jdbc:mysql://localhost:3306/weblab5?user=root;password=admin";
   

    public static ResultSet ExecuteQuery(String sql)
    {
        ResultSet result = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String connectionURL = "jdbc:mysql://localhost:3306/weblab5?autoReconnect=true&useSSL=false";
            Connection connection = DriverManager.getConnection(connectionURL, "root", "01082003");
            Statement stmt = connection.createStatement();
            String mysql = sql;
              
            result = stmt.executeQuery(mysql);
        }
         catch (ClassNotFoundException ex)
            {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        catch (SQLException ex)
        {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

      public static int ExecuteUpdate(String sql)
    {
        int result = 0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String connectionURL = "jdbc:mysql://localhost:3306/weblab5?autoReconnect=true&useSSL=false";
            Connection connection = DriverManager.getConnection(connectionURL, "root", "01082003");
            Statement stmt = connection.createStatement();
            String mysql = sql;

            result = stmt.executeUpdate(mysql);
        }
         catch (ClassNotFoundException ex)
            {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        catch (SQLException ex)
        {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    
}