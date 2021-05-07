/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contronllers;

import Views.Login;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author manht
 */
public class SocketServer_Thread extends Thread {

    Socket client = null;

    public SocketServer_Thread() {
    }
    
    public SocketServer_Thread(Socket cl) {
        super();
        client = cl;
        start();
    }

    @Override
    public void run() {

       
        try {
            String check = "false";
           
            System.out.println(client);
           DataInputStream input = new DataInputStream(client.getInputStream());
           DataOutputStream output = new DataOutputStream(client.getOutputStream());
           
           String userName = input.readLine();
           String password = input.readLine();
           //boolean checkk = false;
            
            //System.out.println(userName+password);
            try {
                ResultSet rs = SocketServer_Connection.getData();
                while (rs.next()) {
                    if (userName.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                        //checkk = true;
                        check = "true";
                        System.out.println(rs.getString("username"));
                        break;
                    }

                }
            } catch (Exception e) {
                System.out.println("Lỗi " + e.toString());
            }
            output.writeBytes(check + "\n");
            
            input.close();
            output.close();
            client.close();
        } catch (IOException ex) {
            Logger.getLogger(SocketServer_Thread.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
