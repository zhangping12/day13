<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>从四个域中获取数据</title>
</head>
<body>
page域：<%=pageContext.getAttribute("message",PageContext.PAGE_SCOPE) %><br/>
request域： <%=pageContext.getAttribute("message",PageContext.REQUEST_SCOPE) %><br/>
session域： <%=pageContext.getAttribute("message",PageContext.SESSION_SCOPE) %><br/>
context域：<%=pageContext.getAttribute("message",PageContext.APPLICATION_SCOPE) %><br/>
</body>
</html>
