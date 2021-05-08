/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlers;

import CSDL.tbHoadon;
import Tienich.Dungchung;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manht
 */
@WebServlet(name = "DoiTTHD", urlPatterns = {"/DoiTTHD"})
public class DoiTTHD extends HttpServlet {

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
            int mahd=0;
            int tthientai = -1;
            int ttmoi = -1;
            String sMaHD = request.getParameter("mahd");
            String sTTHientai = request.getParameter("tthienthai");
            String sTTMoi = request.getParameter("ttmoi");
            if(sMaHD==null || sMaHD.equals("") || Dungchung.isInteger(sMaHD)==false
               ||sTTHientai==null || sTTHientai.equals("") || Dungchung.isInteger(sTTHientai)==false
               ||sTTMoi==null || sTTMoi.equals("") || Dungchung.isInteger(sTTMoi)==false)
            {
                out.println("<h3>Lỗi đường link không hợp lệ!</h3>");
            }
            else{
                mahd = Integer.parseInt(sMaHD);
                tthientai = Integer.parseInt(sTTHientai);
                ttmoi = Integer.parseInt(sTTMoi);
                if((tthientai==0) 
                    ||(tthientai==1&&(ttmoi==2||ttmoi==3))
                    ||(tthientai==3&&(ttmoi==1||ttmoi==2)))
                {
                    tbHoadon bangHoadon = new tbHoadon();
                    int ketqua = bangHoadon.DoiTrangThaiHoadon(mahd, ttmoi);
                    if(ketqua!=1)
                        out.println("<h3>Lỗi đổi trạng thái hóa đơn!</h3>");
                    else
                    {
                        String url = "index_admin.jsp?module=hoadon&cmd=chitiethd&mahd="+mahd;
                        request.getRequestDispatcher(url).forward(request, response);
                    }
                }
                else
                    out.println("<h3>Trạng thái mới không hợp lệ!</h3>");
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
