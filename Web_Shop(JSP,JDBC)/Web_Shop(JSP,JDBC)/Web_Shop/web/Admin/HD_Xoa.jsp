<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2 style="text-align: center">XÓA HÓA ĐƠN</h2>
<div style="border: 1px dashed red; margin: 10px 100px; padding: 50px 10px; 
     color: red; font-size: 20px; text-align: center">
<%
    String ketqua = "";
    if(request.getParameter("ketqua")!=null)
        ketqua = request.getParameter("ketqua");
    if(ketqua.equalsIgnoreCase("OK"))
        out.println("XÓA THÀNH CÔNG");
    else if(ketqua.equalsIgnoreCase("Loi_MaHD"))
        out.println("Lỗi mã hóa đơn");
    else if(ketqua.equalsIgnoreCase("Loi_XoaCTHD"))
        out.println("Lỗi xóa chi tiết hóa đơn");
    else if(ketqua.equalsIgnoreCase("Loi_XoaHD"))
        out.println("Lỗi xóa hóa đơn");
    else
        out.println("CÓ LỖI XẢY RA");
%>
</div>