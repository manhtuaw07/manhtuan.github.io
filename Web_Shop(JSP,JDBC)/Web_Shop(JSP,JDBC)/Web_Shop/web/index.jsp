<%-- 
       
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Giao diện</title>
<link rel="stylesheet" type="text/css" href="CSS_Home/Style.css">
<link rel="stylesheet" type="text/css" href="CSS_Home/Menu.css">
</head>

<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String module="";
        if(request.getParameter("module")!=null)
            module=request.getParameter("module");
    %>
<div id="khung">
    <%@include file="Home/banner.jsp" %>
    <jsp:include page="Home/menu_tren.jsp"/>
    <div id="noidung" class="clear_fix">
        <jsp:include page="Home/noidung_trai.jsp" />
        <div id="nd_Giua"> 
            <% if(module.equalsIgnoreCase("tintuc")){%>
                 <jsp:include page="Home/noidung_tintuc.jsp" />
            <% }else if(module.equalsIgnoreCase("sanpham")){ %>
                <jsp:include page="Home/noidung_sanpham.jsp" />
            <% }else if(module.equalsIgnoreCase("lienhe")){ %>
                <jsp:include page="Home/noidung_lienhe.jsp" />  
            <% }else if(module.equalsIgnoreCase("cart")){ %>
                <jsp:include page="Home/noidung_cart.jsp" /> 
            <% }else {%>
                <jsp:include page="Home/noidung_trangchu.jsp"/>
            <% } %>    
        </div>
        <jsp:include page="Home/noidung_phai.jsp" />
    </div>
        <%@include file="Home/footer.jsp" %>
</div>
</body>
</html>	

