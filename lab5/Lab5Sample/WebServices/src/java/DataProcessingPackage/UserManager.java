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
public class UserManager
{
    public static Boolean Authenticate(String username, String password)
    {
        String sql = "Select * from users where user='" + username +
                                "' and pass='" + password + "'";


        ResultSet resultSet = DataAccessPackage.ConnectionManager.ExecuteQuery(sql);

        Boolean result = false;
        try
        {
            if (resultSet.next())
            {
                if (resultSet.getString("user").equals(username) && resultSet.getString("pass").equals(password))
                {
                    result = true;
                }
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

}
