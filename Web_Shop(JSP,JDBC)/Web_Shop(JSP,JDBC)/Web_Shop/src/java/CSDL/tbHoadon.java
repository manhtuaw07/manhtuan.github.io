/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsHoadon;
//import Models.clsSanpham;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class tbHoadon {
    private void GanThongTinTuRS(ResultSet rs, clsHoadon hd) throws SQLException{
        hd.setMahd(rs.getInt("mahd"));
        hd.setTennguoimua(rs.getString("tennguoimua"));
        hd.setDienthoai(rs.getString("dienthoai"));
        hd.setNgaydat(rs.getString("ngaydat"));
        hd.setNgaynhan(rs.getString("ngaynhan"));
        hd.setTrangthai(rs.getInt("trangthai"));
    }
    //tìm và trả về 1 hóa đơn theo MaHD
    public int TimDSHoadon(int MaHD, clsHoadon hoadon)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;//Lỗi kết nối CSDL
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbhoadon WHERE mahd=?";
            
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, MaHD);
                ResultSet rs = stm.executeQuery();
                if(rs.next()){
                    GanThongTinTuRS(rs,hoadon);
                }
                else 
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;//Lỗi SQL
            }
        }
        return 1;
    }
    //tìm và trả về Vector chứa danh sách hóa đơn vào biển dsHD
    //nếu từ khóa khác rỗng thì tìm các hóa đơn có họ tên chứa từ khóa
    //nếu trang thái = 0->3 thì tìm các hóa đơn có trạng thái = 0,1,2,3 tương ứng
    public int TimDSHoadon(String tukhoa,int trangthai, Vector<clsHoadon> dsHD)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;//Lỗi kết nối CSDL
        else//nếu kết nối CSDL thành công
        {
            String sql = "SELECT * FROM tbhoadon WHERE 1 ";
            if(!tukhoa.equals(""))//nếu từ khóa khác rỗng thì tìm theo họ tên 
                sql += " AND tennguoimua LIKE '%" + tukhoa + "%' ";
            if(trangthai>=0 && trangthai <= 3)//nếu trangthai=0,1,2,3 thì thêm điều kiện tìm hóa đơn theo trạng thái
                sql += " AND trangthai = " + trangthai;
            sql += " ORDER BY mahd DESC";//XẮP XẾP THEO MÃ HÓA ĐƠN GIẢM DẦN
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next()){//duyệt từng bản ghi kết quả select
                    clsHoadon hd= new clsHoadon();
                    GanThongTinTuRS(rs,hd);
                    dsHD.add(hd);
                }
                if(dsHD.size()==0)//không tìm thấy 
                    return 0;
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;//Lỗi SQL
            }
        }
        return 1;
    }
    //ThemHoadon(clsHoadon hoadon) trả về mã hóa đơn vừa thêm
    //trả về -1: lỗi kết nối csdl, -2: lỗi sql; 0: không thêm được; 
    public int ThemHoadon(clsHoadon hoadon){
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        String sql = "INSERT INTO tbhoadon(tennguoimua,dienthoai,ngaynhan,trangthai) "
                + " VALUES(?,?,?,0)";
        try {
            PreparedStatement stm = cnn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, hoadon.getTennguoimua());
            stm.setString(2, hoadon.getDienthoai());
            stm.setString(3, hoadon.getNgaynhan());
            //stm.setInt(4, hoadon.getTrangthai());
            int n = stm.executeUpdate();
            if(n<=0)
                return 0;
            else{
                ResultSet rs = stm.getGeneratedKeys();
                int last_id = 0;
                if(rs.next())
                    last_id = rs.getInt(1);
                return last_id;
            }
        } catch (SQLException ex) {
            Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }
    //Xóa hóa đơn, tham số đầu vào là mã hóa đơn
    public int XoaHoadon(int MaHD){
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        String sql = "DELETE FROM tbhoadon WHERE mahd=?";
        try {
            PreparedStatement stm = cnn.prepareStatement(sql);
            stm.setInt(1, MaHD);
            int n = stm.executeUpdate();
            if(n<=0)
                return 0;
            else{
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }
    //đổi trạng thái hóa đơn
    public int DoiTrangThaiHoadon(int MaHD,int trangthai){
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        String sql = "UPDATE tbhoadon SET trangthai=? WHERE mahd=?";
        try {
            PreparedStatement stm = cnn.prepareStatement(sql);
            stm.setInt(1, trangthai);
            stm.setInt(2, MaHD);
            int n = stm.executeUpdate();
            if(n<=0)
                return 0;
            else{
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }
}
