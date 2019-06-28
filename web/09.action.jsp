<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动作标签</title>
</head>
<body>
<%--转发 --%>
<%
    request.getRequestDispatcher("/09.action2.jsp?name=eric").forward(request,response);
%>
<%-- 参数 --%>
<%--<jsp:forward page="09.action2.jsp">
    <jsp:param name="name" value="jacky"/>
    <jsp:param name="password" value="123456"/>
</jsp:forward>--%>

<%--包含 --%>
<%--<jsp:include page="common/header.jsp">
    <jsp:param name="name" value="lucy"/>
</jsp:include>--%>
<%@include file="common/header.jsp" %>
主页的内容
</body>
</html>
