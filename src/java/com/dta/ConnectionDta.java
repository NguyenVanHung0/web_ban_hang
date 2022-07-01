/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author NguyenVanHung
 */
public class ConnectionDta {
    public static Connection getJDBCConnection(){
        String url = "jdbc:mysql://localhost:3306/mysoft";
        String userName = "root";
        String password = "";
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, userName, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionDta.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDta.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    
}
