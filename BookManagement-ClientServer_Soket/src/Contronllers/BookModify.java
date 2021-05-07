/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contronllers;


import static Contronllers.PublisherModify.getConnection;
import Models.Book;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author manht
 */
public class BookModify {
    public static ArrayList<Book> findBookByID(String id){
        Connection con = getConnection();
        ArrayList<Book> bookList = new ArrayList<>();
        ResultSet resultSet = null;
        try {
            Statement statement = con.createStatement();
            String sql = "select * from sach where ma_nxb like '%"+id+"%'";
            resultSet = statement.executeQuery(sql);
            
            Book b;
            while(resultSet.next()){
                b = new Book(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3));
                bookList.add(b);
            }
            return bookList;
        } catch (SQLException ex) {
            Logger.getLogger(PublisherModify.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
