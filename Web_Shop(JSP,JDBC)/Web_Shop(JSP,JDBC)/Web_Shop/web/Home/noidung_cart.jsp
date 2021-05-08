<%-- 
    
--%>

<%@page import="java.util.Locale"%>
<%@page import="Models.clsSanpham"%>
<%@page import="CSDL.tbSanpham"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 align="center" style="margin-top: 20px; font-size: 24px">GIỎ HÀNG!</h1>
<form name="f1" id="f1" action="cart_update" method="post">
    <%
        HashMap<Integer,Integer> cart = (HashMap<Integer,Integer>)session.getAttribute("cart");
        //tạo các input với tên là sanhpam_i (trong đó i là giá trị từ mảng)
        if(cart==null|| cart.size()==0)
            out.println("<h3 align='center'>giỏ hàng chưa có sản phẩm</h3>");
        else{
            int tongtien =0;
            for(int id : cart.keySet())//lặp từng key trong mảng các key của hashmap
            {
                int soluong = cart.get(id);
                tbSanpham bangSanpham = new tbSanpham();
                clsSanpham sp = new clsSanpham();
                int ketqua = bangSanpham.TimSanpham(id,sp);
                int dongia = sp.getGiasp()*soluong;
                tongtien+=dongia;
                String sGiaSP = String.format("%,d", sp.getGiasp());
                String sDongia = String.format(Locale.US,"%,d", dongia);
      %>
            <div style="height: 60px;display: flex;flex-direction: row;align-items: center;">   
            <span style="width:150px;"><%=sp.getTensp()%></span>
            <span style="width:60px"><img src="Hinhanh/sanpham/<%=sp.getHinhanh()%>" width="50"></span>
            <span style="width:60px">Số lượng:<input type="text" name="sanpham_<%=id%>" value="<%=soluong%>" size="3"></span>
            <span style="width:150px">Giá:<br> <%=sGiaSP%> VNĐ</span>
            <span style="width:150px">Thành tiền:<br> <%=sDongia%> VNĐ</span>
            <span style="width:60px"><a href="cart_del?masp=<%=id%>">Xóa</a></span>
            </div>
    <%
            }
    %>
    <div style="margin-left: 350px; margin-bottom: 10px; font-weight: bold; color: red;">
        Tổng Tiền:<%=String.format("%,d", tongtien)%> VNĐ</div>
    <input type="submit" name="b1" id="b1" value="CẬP NHẬT SỐ LƯỢNG" 
           style="margin-left: 200px; width: 150px">
</form>
<h1 align="center" style="margin-top: 20px; font-size: 18px; background-color: burlywood; 
    padding-top:5px; padding-bottom: 5px ">
    NHẬP THÔNG TIN MUA HÀNG!</h1>
<form name="f2" id="f2" action="cart_checkout" method="post"> 
    <div style="height: 30px;display: flex;flex-direction: row;align-items: center;
         width: 300px; margin: 10px auto;">   
        <span style="width:100px;">Tên người mua:</span>
        <span style="width:100px"><input type="text" name="tHoten" id="tHoten"></span>
     </div>
    <div style="height: 30px;display: flex;flex-direction: row;align-items: center;
         width: 300px; margin: 10px auto;">   
        <span style="width:100px;">Điện thoại:</span>
        <span style="width:100px"><input type="text" name="tDienthoai" id="tDienthoai"></span>
     </div>
    <div style="height: 30px;display: flex;flex-direction: row;align-items: center;
          width: 300px; margin: 0px auto;">   
        <span style="width:100px;">Ngày nhận:</span>
        <span style="width:100px"><input type="text" name="tNgaynhan" id="tNgaynhan"></span>
     </div>
    <div style="height: 30px;width: 300px; margin: 10px auto; text-align: center">   
       <input type="submit" name="button" id="button" value="Đồng ý Đặt hàng">
     </div>
</form>
<%
    }//đóng if(cart==null|| cart.size()==0)
%>