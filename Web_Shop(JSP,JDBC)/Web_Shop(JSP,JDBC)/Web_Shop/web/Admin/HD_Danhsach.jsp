<%@page import="CSDL.tbChitietHoadon"%>
<%@page import="Models.clsHoadon"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbHoadon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2 style="text-align: center">DANH SÁCH HÓA ĐƠN</h2>
<%
    tbHoadon bangHoadon = new tbHoadon();
    Vector<clsHoadon> dsHD = new Vector<clsHoadon>();
    int ketqua = bangHoadon.TimDSHoadon("", -1, dsHD);
    if(ketqua==-1)
        out.println("<h3> LỖI KẾT NỐI CSDL</h3>");
    else if(ketqua==-2)
        out.println("<h3> LỖI TRUY VẤN CSDL SQL</h3>");
    else if(ketqua==0)
        out.println("<h3> CHƯA CÓ HÓA ĐƠN</h3>");
    else{
%>
<table width="684" border="1" align="center" cellpadding="0" cellspacing="0"
       style="margin: 10px auto;">
        <tr>
          <td width="59" bgcolor="#FFCC00">Mã HĐ</td>
          <td width="247" bgcolor="#FFCC00">Tên người mua</td>
          <td width="94" bgcolor="#FFCC00">Điện thoại</td>
          <td width="138" bgcolor="#FFCC00">Ngày đặt hàng</td>
          <td width="138" bgcolor="#FFCC00">Ngày nhận hàng</td>
          <td width="134" bgcolor="#FFCC00">Trạng thái</td>
          <td width="134" bgcolor="#FFCC00">Tổng tiền</td>
          <td width="134" bgcolor="#FFCC00">Thực hiện</td>
        </tr>
        <%
            for(clsHoadon hd : dsHD){
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
                //tính tổng tiền hóa đơn
                tbChitietHoadon bangCTHD = new tbChitietHoadon();
                int tongtien = bangCTHD.TinhTongTienHD(hd.getMahd());
                if(tongtien <0)
                    out.println("Lỗi KẾT NỐI CSDL HOẶC SQL");
        %>
        <tr>
          <td>
          <a href="?module=hoadon&cmd=chitiethd&mahd=<%=hd.getMahd()%>">
              <%=hd.getMahd()%> </a>
          </td>
          <td><%=hd.getTennguoimua()%></td>
          <td><%=hd.getDienthoai()%></td>
          <td><%=hd.getNgaydat()%></td>
          <td><%=hd.getNgaynhan()%></td>
          <td><%=trangthai%></td>
          <td><%=String.format("%,d", tongtien)%> vnđ</td>
          <td align="center">
              <%
                  if(hd.getTrangthai()==2)//hóa đơn đã thanh toán
                    out.print("---");
                  else{
              %>
                <a href="XoaHoadon?mahd=<%=hd.getMahd()%>" 
                   onClick="return confirm('Chắc chắn xóa?');">Xóa</a>
                <%
                    }
                %>
          </td>
        </tr>
        <%
            }//đóng for
        %>
</table>
<%
    }//ĐÓNG else (ketqua==-1)
%>