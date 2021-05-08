<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbSanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 style="text-align: center; margin-top: 5px">TRANG CHỦ</h3>
<%
    tbSanpham bangSanpham = new tbSanpham();
    Vector<clsSanpham> dsSP = new Vector<clsSanpham>();
    int ketequa = bangSanpham.DSTopNSanpham(3,1,dsSP);
    if(ketequa==-1)
        out.println("<h3> LỖI KẾT NỐI CSDL</h3>");
    else if(ketequa==-2)
        out.println("<h3> LỖI TRUY VẤN CSDL SQL</h3>");
    else if(ketequa==0)
        out.println("<h3> CHƯA CÓ SẢN PHẨM</h3>");

    else{
        for(clsSanpham sp:dsSP){
%>
<div class="sanpham">
    <p><a href="index.jsp?module=sanpham&manhom=<%=sp.getManhom()%>&masp=<%=sp.getId()%>">
            <%=sp.getTensp()%></a></p>
    <p><img src="Hinhanh/sanpham/<%=sp.getHinhanh()%>"></p>
    <p>Giá: <%=String.format("%,d", sp.getGiasp())%></p>
    <p><a href="cart_add?masp=<%=sp.getId()%>">Thêm vào giỏ hàng</a></p>
</div>
 <%
        }//đóng for
    }//đóng else
%>