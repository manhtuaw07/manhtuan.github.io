<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Giao diện admin</title>
<link rel="stylesheet" type="text/css" href="CSS_Admin/Style.css">
<link rel="stylesheet" type="text/css" href="CSS_Admin/Menu.css">
</head>

<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String module="";
        if(request.getParameter("module")!=null)
            module=request.getParameter("module");
    %>
<div id="khung">
    
    <%@include file="Admin/menu_tren.jsp" %>
    <div id="noidung">
            <% if(module.equalsIgnoreCase("tintuc")){%>
                 <jsp:include page="Admin/QL_Tintuc.jsp" />
            <% }else if(module.equalsIgnoreCase("nhomsanpham")){ %>
                <jsp:include page="Admin/QL_NhomSP.jsp" /> 
            <% }else if(module.equalsIgnoreCase("sanpham")){ %>
                <jsp:include page="Admin/QL_Sanpham.jsp" />
            <% }else if(module.equalsIgnoreCase("hoadon")){ %>
                <jsp:include page="Admin/QL_Hoadon.jsp" />  
            <% }else {%>
                <jsp:include page="Admin/Trangchu.jsp"/>
            <% } %>   

    </div>
    
</div>
</body>
</html>	
