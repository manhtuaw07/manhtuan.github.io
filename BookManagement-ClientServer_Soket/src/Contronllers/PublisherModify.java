/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contronllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
//import Controllers.PublisherModify;
import Models.Book;
import Models.Publisher;

/**
 *
 * @author manht
 */
public class PublisherModify {
   public static Connection getConnection(){
        Connection con = null;
        try {
           
            con = DriverManager.getConnection("jdbc:mysql://localhost/qlthuvien","root","");
          
            return con;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Ket noi that bai!" +e.toString());
            return null;
        }   
    }
    
    public static ArrayList<Publisher> getAllPublisher(){
        Connection con = getConnection();
        ArrayList<Publisher> pubList = new ArrayList<>();
        ResultSet resultSet = null;
        try {
            Statement statement = con.createStatement();
            String sql = "select * from nhaxuatban";
            resultSet = statement.executeQuery(sql);
            
            Publisher pl;
            while(resultSet.next()){
                pl = new Publisher(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4));
                pubList.add(pl);
            }
            return pubList;
        } catch (SQLException ex) {
            Logger.getLogger(PublisherModify.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public static boolean checkIDPublisher(String id){
        Connection con = getConnection();
        ResultSet resultSet = null;
        try {
            Statement statement = con.createStatement();
            String sql = "select count(*) from nhaxuatban where ma_nxb = '"+id+"'";
            resultSet = statement.executeQuery(sql);
            if(resultSet.next()){
                if (resultSet.getString(1).equals("0")) {
                     return true;
                }
               
            }  
        } catch (SQLException ex) {
            Logger.getLogger(PublisherModify.class.getName()).log(Level.SEVERE, null, ex);      
        }
        return false;
    }
    
    public static void insertPublisher(Publisher pl){
        if (checkIDPublisher(pl.getId())==false) {
             JOptionPane.showMessageDialog(null,"Mã nhà xuất bản đã tồn tại!, Thêm thất bại!","Trùng mã",0,null);
             return;
        }
        Connection connection = getConnection();
        String sql = "insert into nhaxuatban values('"+pl.getId()+"','"+pl.getName()+"','"+pl.getAddress()+"','"+pl.getPhoneNumber()+"')";
        try {
            Statement statement = connection.createStatement();
            if (statement.executeUpdate(sql) == 1) {
                JOptionPane.showMessageDialog(null,"Thêm thành công!");
            }else
                JOptionPane.showMessageDialog(null,"Thêm thất bại!");
        } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null,"Lỗi "+ex.toString());
        }
    }
    
    public static void updatePublisher(Publisher pl){
        Connection connection = getConnection();
        String sql = "update nhaxuatban set ten_nxb = '"+pl.getName()+"',dia_chi = '"+pl.getAddress()+"', sdt = '"+pl.getPhoneNumber()+"' where ma_nxb = '"+pl.getId()+"'";
        try {
            Statement statement = connection.createStatement();
            if (statement.executeUpdate(sql) == 1) {
                JOptionPane.showMessageDialog(null,"Sửa thành công!");
            }else
                JOptionPane.showMessageDialog(null,"Sửa thất bại!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Lỗi "+ex.toString());
        }
    }
    
    public static void deletePublisher(String id){
        Connection connection = getConnection();
        String sql = "delete from nhaxuatban where ma_nxb = '"+id+"'";
        try {
            Statement statement = connection.createStatement();
            if (statement.executeUpdate(sql) == 1) {
                JOptionPane.showMessageDialog(null,"Xóa thành công!");
            }else
                JOptionPane.showMessageDialog(null,"Xóa thất bại!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Lỗi "+ex.toString());
        }
    }
    
     
}

