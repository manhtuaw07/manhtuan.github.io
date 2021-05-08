<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 style="text-align: center; margin-top: 5px">QUẢN LÝ HÓA ĐƠN</h1>
<%
    String cmd = "";
    if(request.getParameter("cmd")!=null)
            cmd=request.getParameter("cmd");
    if(cmd.equalsIgnoreCase("chitiethd")){
%>
    <jsp:include page="HD_Chitiet.jsp" />
    <%}else if(cmd.equalsIgnoreCase("xoa")){%>
    <jsp:include page="HD_Xoa.jsp" />
    <%}else{%>
    <jsp:include page="HD_Danhsach.jsp" />
    <%}%>