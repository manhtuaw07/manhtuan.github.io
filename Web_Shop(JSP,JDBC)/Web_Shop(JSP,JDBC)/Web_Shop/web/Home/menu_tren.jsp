<%@page import="java.util.HashMap"%>
<%@page import="Tienich.Dungchung"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsNhomSP"%>
<%@page import="CSDL.tbNhomSP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="menu">
      <ul>
        <li><a href="index.jsp">Trang chủ</a></li>
        <li><a href="index.jsp?module=tintuc">Tin tức</a>
            <ul>
                <li><a href="#">Thể thao</a></li>
                <li><a href="#">Giáo dục</a></li>
                <li><a href="#">Kinh tế</a></li>
            </ul>
        </li>
        <li><a href="index.jsp?module=sanpham">Sản phẩm</a>
           <%
               Dungchung.Hienthi_NhomSP_UL(out);
           %>
        </li>
        <li><a href="index.jsp?module=lienhe">Liên hệ</a></li>
        <%
            HashMap<Integer,Integer> cart = (HashMap<Integer,Integer>)session.getAttribute("cart");
            int sosp=0;
            if(cart!=null)
                sosp = cart.size();
        %>
        <li><a href="index.jsp?module=cart">Giỏ hàng (<%=sosp%>)</a></li>
      </ul>
    </div>
