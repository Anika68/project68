/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User pc
 */
import java.sql.*;
import javax.swing.*;
public class javaconnect { 

     public static Connection getConnection()
   {
          Connection conn=null;
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost/LibraryNew","root","");
            //JOptionPane.showMessageDialog(null, "connected");
            return conn;
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
   }
   
    
}
