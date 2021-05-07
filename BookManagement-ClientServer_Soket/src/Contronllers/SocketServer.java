/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contronllers;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/**
 *
 * @author manht
 */
public class SocketServer {
    public static void main(String[] args) throws IOException {
         ServerSocket server = new ServerSocket(1234);
        System.out.println("Server dang chay...");
        while(true){
            Socket client = server.accept();
            SocketServer_Thread server_Thread = new SocketServer_Thread(client);
            
        }
    }
}
