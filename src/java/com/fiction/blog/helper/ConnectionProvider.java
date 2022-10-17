/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.helper;

/**
 *
 * @author thomb
 */

import java.sql.*;
public class ConnectionProvider {
    
    public static Connection con;
    public static Connection getConnection()
    {
        try
        {
            if(con == null)
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/writeblog", "root", "sonu#mysql2022");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
