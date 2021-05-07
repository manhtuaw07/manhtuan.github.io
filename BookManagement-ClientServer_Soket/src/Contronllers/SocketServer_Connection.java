/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contronllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author manht
 */
public class SocketServer_Connection {
    public static Connection getConnectionToLogIn() {
        try { 
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SocketServer_Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
        Connection con = null;
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/thongtin", "root", "");
            return con;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Kết nối thất bại! "+e.toString());
            return null;
        }
    }

    public static ResultSet getData() {
        try {
            ResultSet kq = null;
            Connection con = getConnectionToLogIn();
            Statement st = con.createStatement();
            String sql = "select * from taikhoan";
            kq = st.executeQuery(sql);
            return kq;
        } catch (Exception e) {
            System.out.println("Lỗi "+e.toString());
            return null;
        }
    }
}
