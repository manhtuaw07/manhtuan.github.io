<%@page import="Models.clsSanpham"%>
<%@page import="CSDL.tbSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsChitietHoadon"%>
<%@page import="CSDL.tbChitietHoadon"%>
<%@page import="Models.clsHoadon"%>
<%@page import="Tienich.Dungchung"%>
<%@page import="CSDL.tbHoadon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2 style="text-align: center">CHI TIẾT HÓA ĐƠN</h2>
<%
    int mahd=0;
    String sMaHD = request.getParameter("mahd");
    if(sMaHD==null || sMaHD.equals("") || Dungchung.isInteger(sMaHD)==false){
        out.println("<h3> LỖI MÃ HÓA ĐƠN</h3>");
    }
    else{
        mahd = Integer.parseInt(sMaHD);
        tbHoadon bangHD = new tbHoadon();
        clsHoadon hd = new clsHoadon();
        int ketqua = bangHD.TimDSHoadon(mahd, hd);
        if(ketqua!=1)
            out.println("<h3>Lỗi tìm hóa đơn: " + mahd + "<h3>");
        else{
            //xác định trạng thái hóa đơn
            String trangthai ="";
            if(hd.getTrangthai()==0)
                trangthai= "Mới";
            else if(hd.getTrangthai()==1)
                trangthai = "Đã duyệt";
            else if(hd.getTrangthai()==2)
                trangthai = "Đã thanh toán";
            else if(hd.getTrangthai()==3)
                trangthai = "Đã hủy";
            else
                trangthai = "không xác định";
            //Tính Tổng tiền
            tbChitietHoadon bangCTHD = new tbChitietHoadon();
                int tongtien = bangCTHD.TinhTongTienHD(hd.getMahd());
%>
    <div style="border: 1px dashed red; margin: 10px; padding:10px; 
         color: red; font-size: 24px; width: 200px; float: left">
        <h2 style="text-align: center">THÔNG TIN CHUNG</h2>
        <p>Tên người mua: <b><%=hd.getTennguoimua()%></b></p>
        <p>Điện thoại: <b> <%=hd.getDienthoai()%></b></p>
        <p>Ngày đặt:  <b><%=hd.getNgaydat()%></b></p>
        <p>Ngày nhận:  <b><%=hd.getNgaynhan()%></b></p>
        <p>Trạng thái:  <b><%=trangthai%></b></p>
        <p>Tổng tiền:  <b><%=String.format("%,d", tongtien)%> vnđ</b></p>
        <select name="sTrangthai" id="sTrangThai" onChange="doitrangthai();" style="width:200px">
            <option value=""> Đổi trạng thái HĐ</option>
            <option value="0"> Mới</option>
            <option value="1"> Đã duyệt</option>
            <option value="2"> Đã thanh toán</option>
            <option value="3"> Hủy hóa đơn</option>
        </select>
            <script language="javascript">
            function doitrangthai()
            {
                    ttmoi = document.getElementById("sTrangThai").value;
                    if(ttmoi!="")
                    {
                    window.location.href="DoiTTHD?mahd=<%=hd.getMahd()%>&tthienthai=<%=hd.getTrangthai()%>&ttmoi="+ttmoi;
                    }
            }
            </script>
    </div>
    <div style="margin: 10px;font-size: 24px; width: 700px; float: left;">
             <h2 style="text-align: center">THÔNG TIN CHI TIẾT CÁC SẢN PHẨM</h2>
             <%
                 Vector<clsChitietHoadon> dsCTHD = new Vector<clsChitietHoadon>();
                 ketqua = bangCTHD.TimDSChitietHoadon(mahd, dsCTHD);
                 if(ketqua!=1)
                    out.println("<h3>Lỗi tìm chi tiết hóa đơn: " + mahd + "<h3>");
                 else{
             %>
             <table width="664" border="1" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="59" bgcolor="#FFCC00">STT</td>
                  <td width="50" bgcolor="#FFCC00">ID Sản phẩm</td>
                  <td width="174" bgcolor="#FFCC00">Tên sản phẩm</td>
                  <td width="138" bgcolor="#FFCC00">Hình ảnh</td>
                  <td width="138" bgcolor="#FFCC00">Giá mua</td>
                  <td width="134" bgcolor="#FFCC00">Số lượng</td>
                  <td width="134" bgcolor="#FFCC00">Thành tiền</td>
                </tr>
                <%  
                    int stt=0;
                    for(clsChitietHoadon cthd : dsCTHD){
                        stt++;
                        tbSanpham bangSP = new tbSanpham();
                        clsSanpham sp = new clsSanpham();
                        ketqua = bangSP.TimSanpham(cthd.getIdsp(), sp);
                        String tensp  ="";
                        String anhsp = "";
                        if(ketqua!=1)
                            out.println("<h3>Lỗi tìm sản phẩm: " + cthd.getIdsp() + "<h3>");
                        else{
                            tensp = sp.getTensp();
                            anhsp = sp.getHinhanh();
                        }
                %>
                <tr>
                    <td><%=stt%></td>
                    <td><%=cthd.getIdsp()%></td>
                    <td><%=tensp%></td>
                    <td><img src="Hinhanh/sanpham/<%=anhsp%>" width="50"></td>
                    <td><%=String.format("%,d", cthd.getGiamua())%> vnđ</td>
                    <td><%=cthd.getSoluong()%></td>
                    <td><%=String.format("%,d", cthd.getGiamua()*cthd.getSoluong())%> vnđ</td>
                 </tr>
                <%
                    }//đóng for chi tiết hóa đơn
                %>
             </table>
             <%
                 }//đóng ketqua!=1 của chi tiết hóa đơn
             %>
    </div>
<%
        }//đóng if(ketqua!=1) của tìm hóa đơn
    }//đóng sMaHD==null
%>