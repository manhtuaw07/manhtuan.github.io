/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tienich;

import CSDL.tbNhomSP;
import Models.clsNhomSP;
import java.io.IOException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author manht
 */
public class Dungchung {
    //kiểm tra 1 chuỗi ở dạng số nguyên hay không?
    public static boolean isInteger(String str){
        boolean ketqua ;
        try{
            int n = Integer.parseInt(str);
            ketqua = true;
        }catch(NumberFormatException e1){
            ketqua = false;
        }catch(Exception e1){
            ketqua = false;
        }
        return ketqua;
    }
    //kiểm tra 1 chuỗi ở dạng số thực hay không?
    public static boolean isNumberic(String str){
        boolean ketqua ;
        try{
            double n = Double.parseDouble(str);
            ketqua = true;
        }catch(NumberFormatException e1){
            ketqua = false;
        }catch(Exception e1){
            ketqua = false;
        }
        return ketqua;
    }
    public static void Hienthi_NhomSP_UL(JspWriter out){
        try {
            tbNhomSP bangNhomSP = new tbNhomSP();
                //Vector<clsNhomSP> dsNhomSP = bangNhomSP.TimNhomSP("");
                Vector<clsNhomSP> dsNhomSP = new Vector<clsNhomSP>();
                int ketqua = bangNhomSP.TimNhomSP("",1,"ASC",dsNhomSP);
                if(ketqua==-1)
                    out.println("<h3>LỖI KẾT NỐI CSDL</h3>");
                else if(ketqua==-2)
                    out.println("<h3>LỖI TRUY VẤN CSDL SQL</h3>");
                else if(ketqua==0)
                    out.println("<h3>Chưa có nhóm sản phẩm</h3>");
                else{
                    out.println("<ul>");
                    for(clsNhomSP nhomsp : dsNhomSP){
                        out.println("<li>");
                        out.println("<a href=\"index.jsp?module=sanpham&manhom="+ 
                                                                    nhomsp.getManhom() +"\">");
                        out.println(nhomsp.getTenhom());
                        out.println("</a>");
                        out.println("</li>");
                    }
                    out.println("</ul>");
                }
        } catch (IOException ex) {
            Logger.getLogger(Dungchung.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void Hienthi_NhomSP_Option(JspWriter out,int manhom){
        try {
                tbNhomSP bangNhomSP = new tbNhomSP();
                //Vector<clsNhomSP> dsNhomSP = bangNhomSP.TimNhomSP("");
                Vector<clsNhomSP> dsNhomSP = new Vector<clsNhomSP>();
                int ketqua = bangNhomSP.TimNhomSP("",1,"ASC",dsNhomSP);
                if(ketqua==-1)
                    out.println("<h3>LỖI KẾT NỐI CSDL</h3>");
                else if(ketqua==-2)
                    out.println("<h3>LỖI TRUY VẤN CSDL SQL</h3>");
                else if(ketqua==0)
                    out.println("<h3>Chưa có nhóm sản phẩm</h3>");
                else{
                    for(clsNhomSP nhomsp : dsNhomSP){
                        if(nhomsp.getManhom()==manhom)
                            out.println("<option value=\"" + nhomsp.getManhom() + "\" selected>" + nhomsp.getTenhom() +"</option>");
                        else
                            out.println("<option value=\"" + nhomsp.getManhom() + "\">" + nhomsp.getTenhom() +"</option>");
                    }
                }
        } catch (IOException ex) {
            Logger.getLogger(Dungchung.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
