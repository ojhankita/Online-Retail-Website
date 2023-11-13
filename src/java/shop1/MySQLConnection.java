/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package shop1;
import java.sql.*;
/**
 *
 * @author Ashutosh
 */
public class MySQLConnection {
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/shopping","root","mysql");
            }
        catch(Exception e){
            
            System.out.println(" ****************************************************************** ");
            System.out.println("Error : in creating connection");
            System.out.println(e);
            System.out.println(" ****************************************************************** ");
        }
        return con;
    }
}
