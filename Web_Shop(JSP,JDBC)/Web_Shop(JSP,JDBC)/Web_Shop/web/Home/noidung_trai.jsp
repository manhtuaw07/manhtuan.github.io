<%@page import="Tienich.Dungchung"%>
<%@page import="CSDL.tbNhomSP"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsNhomSP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="nd_Trai">
        <H2> TÌM KIẾM</H2>
        <%
        String tukhoa="";
        int gia1=0,gia2=0;
        int nhomsp=0;
        if(request.getParameter("timkiem")!=null){
           tukhoa = request.getParameter("tukhoa");
           //out.println("<p>Từ khóa: " + tukhoa + "</p>");
           if(request.getParameter("gia1")!=null&&!request.getParameter("gia1").equals(""))
            gia1 = Integer.parseInt(request.getParameter("gia1"));
           if(request.getParameter("gia2")!=null&&!request.getParameter("gia2").equals(""))
            gia2 = Integer.parseInt(request.getParameter("gia2"));
           
           if(request.getParameter("nhomsp")!=null&&!request.getParameter("nhomsp").equals(""))
            nhomsp = Integer.parseInt(request.getParameter("nhomsp"));
           //gán các giá trị vào request để trang kế tiếp sử dụng
           request.setAttribute("tukhoa", tukhoa);
           request.setAttribute("gia1",Integer.valueOf(gia1));
           request.setAttribute("gia2",Integer.valueOf(gia2));
           request.setAttribute("nhomsp",Integer.valueOf(nhomsp));
        }%>
        <div style="width:180px; margin: 5px auto;">
        <form name="f1" action="index.jsp?module=sanpham&timkiem=1" method="post">
            <div style="height: 25px">
            <select style="width:180px;" name="nhomsp" id="nhomsp">
                <option value="0">Chọn nhóm sản phẩm</option>
                <%
               Dungchung.Hienthi_NhomSP_Option(out,nhomsp);
                %>
            </select>
            </div>
            <div style="height: 25px;display: flex;flex-direction: row;align-items: center;">
                <span style="width:80px;">Từ khóa:</span>
                 <input style="width:100px" type="text" name="tukhoa" id="tukhoa" size="10" value="<%=tukhoa%>">
                </div>
            <div style="height: 25px;display: flex;flex-direction: row;align-items: center;">
            <span style="width:80px;">Giá từ:</span> 
            <input  style="width:100px" type="text" name="gia1" id="gia1" size="10"  value="<%=gia1%>">
            </div>
            <div style="height: 25px;display: flex;flex-direction: row;align-items: center;">
            <span style="width:80px;">Giá đến:</span> 
            <input  style="width:100px" type="text" name="gia2" id="gia2" size="10"  value="<%=gia2%>">
             </div>
             <div style="height: 25px; text-align: center">
                 <input style="width:100px" type="submit" name="b1" id="b1" value="Tìm kiếm">
             </div>
        </form> 
        </div>
</div>