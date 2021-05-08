/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsNhomSP;
import Models.clsSanpham;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyen Minh Quang
 */
public class tbSanpham {
    private void GanThongTinTuRS(ResultSet rs, clsSanpham sp) throws SQLException{
        sp.setId(rs.getInt("id"));
        sp.setMasp(rs.getString("masp"));
        sp.setTensp(rs.getString("tensp"));
        sp.setGiasp(rs.getInt("giasp"));
        sp.setManhom(rs.getInt("manhom"));
        sp.setHinhanh(rs.getString("hinhanh"));
        sp.setTomtat(rs.getString("tomtat"));
        sp.setNoidung(rs.getString("noidung"));
        sp.setTrangthai(rs.getBoolean("trangthai"));
    }
    public int TimDSSanpham(int manhom,int trangthai, Vector<clsSanpham> dsSP)
    {
        //Vector<clsSanpham> dsSP=new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;//Lỗi kết nối CSDL
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbsanpham WHERE 1 ";
            if(manhom>0)//nếu mã nhóm > 0 => bổ sung tìm sp theo mã nhóm
                sql += " AND manhom=" + manhom;
            if(trangthai==0 || trangthai == 1)
                sql += " AND trangthai = " + trangthai;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                //dslop = new Vector<clsLophoc>();
                while(rs.next()){//duyệt từng bản ghi kết quả select
                    clsSanpham sp= new clsSanpham();
                    GanThongTinTuRS(rs,sp);
                    dsSP.add(sp);
                }
                if(dsSP.size()==0)//không tìm thấy sản phẩm nào
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbSanpham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;//Lỗi SQL
            }
        }
        return 1;
    }  
    public int TimDSSanpham(int manhom, String tukhoa, int gia1, int gia2,int trangthai,Vector<clsSanpham> dsSP)
    {
        //Vector<clsSanpham> dsSP=new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbsanpham WHERE 1 ";
            if(manhom>0){
                sql = sql + " AND manhom="+manhom;
            }
            if(tukhoa.equals("")==false){
                sql = sql + " AND tensp LIKE '%" + tukhoa + "%' ";
            }
            if(gia1>=0 && gia2>0){
                sql = sql + " AND (giasp >= " + gia1 + " AND giasp<=" + gia2 + ") ";
            }
            if(trangthai==0 || trangthai == 1)
                sql += " AND trangthai = " + trangthai;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                //dslop = new Vector<clsLophoc>();
                while(rs.next()){//duyệt từng bản ghi kết quả select
                    clsSanpham sp= new clsSanpham();
                    GanThongTinTuRS(rs,sp);
                    dsSP.add(sp);
                }
                if(dsSP.size()==0)//không tìm thấy sản phẩm nào
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbSanpham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;//Lỗi SQL
            }
        }
        return 1;
    }
    public int TimSanpham(int id,clsSanpham sp)
    {
        //clsSanpham sp=new clsSanpham();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbsanpham WHERE id="+id;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                  if(rs.next()){//nếu có kết quả select
                    GanThongTinTuRS(rs,sp);
                    return 1;
                 }
                else
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbSanpham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }  
    //TRẢ VỀ DANH SÁCH N SẢN PHẨM MỚI NHẤT
    public int DSTopNSanpham(int n,int trangthai,Vector<clsSanpham> dsSP)
    {
        //Vector<clsSanpham> dsSP=new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbsanpham WHERE 1 ";
            if(trangthai==0 || trangthai == 1)
                sql += " AND trangthai = " + trangthai;
            sql += " ORDER BY id DESC Limit 0," + n;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                //dslop = new Vector<clsLophoc>();
                while(rs.next()){//duyệt từng bản ghi kết quả select
                    clsSanpham sp= new clsSanpham();
                    GanThongTinTuRS(rs,sp);
                    dsSP.add(sp);
                }
                if(dsSP.size()==0)//không tìm thấy sản phẩm nào
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbSanpham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;//Lỗi SQL
            }
        }
        return 1;
    }  
    
}
