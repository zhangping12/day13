<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>错误处理页面</title>
</head>

<body>
亲， 系统发生小小的错误，请耐心等待，管理员正在加紧抢修中...
错误原理：<%=exception.getMessage() %>
</body>
</html>
