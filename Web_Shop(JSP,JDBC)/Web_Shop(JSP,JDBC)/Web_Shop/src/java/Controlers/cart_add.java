/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manht
 */
@WebServlet(name = "cart_add", urlPatterns = {"/cart_add"})
public class cart_add extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           //lấy giỏ hàng từ Session
            HttpSession session = request.getSession();
            HashMap<Integer,Integer> cart = (HashMap<Integer,Integer>)session.getAttribute("cart");
            if(cart==null){//nếu chưa có giỏ hàng thì tạo mới
               cart = new  HashMap<Integer,Integer>();
            }
            //lấy mã sản phẩm từ link cart_add?masp=1 và thêm vào giỏ hàng
            int id = Integer.parseInt(request.getParameter("masp"));
            //kiểm tra sản phẩm có trong giỏ hàng chưa?
            //nếu chưa có thêm vào giỏ hàng với số lượng là 1
            //nếu sản phẩm đã có thì lấy số lượng cũ + 1 và chèn lại
            if(cart.containsKey(id)==false){//nếu chưa có
                cart.put(id, 1);
            }
            else{//sản phẩm đã có
                int soluong = cart.get(id);//lấy value (số lượng sp) từ giỏ hàng
                soluong++;
                cart.put(id, soluong);//ghi đè lại số lượng mới vào giỏ hàng
            }
            //cập nhật giỏ hàng vào session
            session.setAttribute("cart", cart);
            response.sendRedirect("index.jsp?module=cart");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
