<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsNhomSP"%>
<%@page import="CSDL.tbSanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h4 style="text-align: center; margin-top: 5px">DANH SÁCH</h4>
<%
    tbSanpham bangSanpham = new tbSanpham();
    Vector<clsSanpham> dsSP=new Vector<clsSanpham>();
    int ketqua =-1;
    //xử lý truy vấn lấy danh sách sản phẩm theo mã nhóm sp
    int manhom =0;
    if(request.getParameter("timkiem")!=null){
        String tukhoa = (String)request.getAttribute("tukhoa");
        int gia1 = (Integer)request.getAttribute("gia1");
        int gia2 = (Integer)request.getAttribute("gia2");
        manhom =(Integer)request.getAttribute("nhomsp");

        ketqua = bangSanpham.TimDSSanpham(manhom,tukhoa, gia1, gia2,1,dsSP);
    }
    else{
         String sManhom="";
        if(request.getParameter("manhom")!=null)
        sManhom=request.getParameter("manhom");
        if(!sManhom.equals(""))
        manhom = Integer.parseInt(sManhom);
        ketqua = bangSanpham.TimDSSanpham(manhom,1,dsSP);
    }
    if(ketqua==-1)
        out.println("<h3> LỖI KẾT NỐI CSDL</h3>");
    else if(ketqua==-2)
        out.println("<h3> LỖI TRUY VẤN CSDL SQL</h3>");
    else if(ketqua==0)
        out.println("<h3> CHƯA CÓ SẢN PHẨM</h3>");
    else{
        for(clsSanpham sp:dsSP){
%>
<div class="sanpham">
    <p><a href="index.jsp?module=sanpham&manhom=<%=manhom%>&masp=<%=sp.getId()%>">
            <%=sp.getTensp()%></a></p>
    <p><img src="Hinhanh/sanpham/<%=sp.getHinhanh()%>"></p>
    <p>Giá: <%=String.format("%,d", sp.getGiasp())%></p>
    <p><a href="cart_add?masp=<%=sp.getId()%>">Thêm vào giỏ hàng</a></p>
</div>
 <%
        }//đóng for
    }//đóng else
%>

