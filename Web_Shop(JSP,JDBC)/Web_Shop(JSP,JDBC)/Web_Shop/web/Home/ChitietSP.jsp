<%@page import="Models.clsSanpham"%>
<%@page import="CSDL.tbSanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h4 style="text-align: center; margin-top: 5px">CHI TIẾT SẢN PHẨM</h4>
<%
    String sMasp="";
    if(request.getParameter("masp")!=null)
        sMasp=request.getParameter("masp");
    int id =0;
    if(!sMasp.equals(""))
        id = Integer.parseInt(sMasp);
    tbSanpham bangSanpham = new tbSanpham();
    clsSanpham sp = new clsSanpham();
    int ketqua = bangSanpham.TimSanpham(id,sp);
    if(ketqua==-1)
        out.println("<h3> LỖI KẾT NỐI CSDL</h3>");
    else if(ketqua==-2)
        out.println("<h3> LỖI TRUY VẤN CSDL SQL</h3>");
    else if(ketqua==0)
        out.println("<h3> CHƯA CÓ SẢN PHẨM</h3>");

    else{
%>
<div class="sanpham">
    <p><%=sp.getTensp()%></p>
    <img src="Hinhanh/sanpham/<%=sp.getHinhanh()%>">
    <p>giá: <%=String.format("%,d", sp.getGiasp())%></p>
    <p><a href="cart_add?masp=<%=sp.getId()%>">Thêm vào giỏ hàng</a></p>
 </div>
<div style="width:390px; float: right; border: 1px blue dashed;">
    <div style="width:390px; border: 1px RED dashed;">
        <h3>TÓM TẮT SẢN PHẨM</h3>
        <%=sp.getTomtat()%>
    </div>
    <div style="width:390px; border: 1px GREEN dashed;">
        <h3>NỘI DUNG CHI TIẾT SẢN PHẨM</h3>
        <%=sp.getNoidung()%>
    </div>
</div>
<%
    }
%>