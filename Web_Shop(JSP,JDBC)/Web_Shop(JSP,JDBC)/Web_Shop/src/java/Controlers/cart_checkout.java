/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlers;

import CSDL.tbChitietHoadon;
import CSDL.tbHoadon;
import CSDL.tbSanpham;
import Models.clsChitietHoadon;
import Models.clsHoadon;
import Models.clsSanpham;
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
@WebServlet(name = "cart_checkout", urlPatterns = {"/cart_checkout"})
public class cart_checkout extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            request.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
            HashMap<Integer,Integer> cart = (HashMap<Integer,Integer>)session.getAttribute("cart");
            if(cart!=null ||cart.size()>0){
                //lấy thông tin từ form đặt hàng và tạo hóa đơn mới
                clsHoadon hoadon = new clsHoadon();
                hoadon.setTennguoimua(request.getParameter("tHoten"));
                hoadon.setDienthoai(request.getParameter("tDienthoai"));
                hoadon.setNgaynhan(request.getParameter("tNgaynhan"));
                tbHoadon bangHoadon = new tbHoadon();
                int mahd = bangHoadon.ThemHoadon(hoadon);
                boolean loi = false;
                if(mahd<=0){
                    out.println("<h3>Lỗi thêm hóa đơn: " + mahd + "</h3>");
                    loi = true;
                }
                else{//thêm các sản phẩm từ giỏ hàng vào chi tiết hóa đơn 
                    for(int idsp : cart.keySet())//lấy các id sản phẩm từ giỏ hàng
                    {
                        int soluong = cart.get(idsp);
                        //lấy giá sản phẩm từ bảng sản phẩm
                        tbSanpham bangSanpham = new tbSanpham();
                        clsSanpham sp = new clsSanpham();
                        bangSanpham.TimSanpham(idsp,sp);
                        int dongia = sp.getGiasp();
                        //tạo chi tiết hóa đơn và thêm vào csdl
                        clsChitietHoadon cthd = new clsChitietHoadon(0, mahd, idsp, soluong, dongia);
                        tbChitietHoadon bangChitietHoadon = new tbChitietHoadon();
                        int ketqua = bangChitietHoadon.ThemChitietHoadon(cthd);
                        if(ketqua<=0){
                            out.println("<h3>Lỗi thêm chi tiết hóa đơn</h3>");
                            loi = true;
                        }
                    }
                }
                if(loi==false){
                    session.setAttribute("cart",null);
                    out.println("<h3>Cảm ơn bạn đã đặt hàng thành công</h3>");
                    out.println("<a href=\"index.jsp\">Trang chủ</a>");
                }
            }

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
