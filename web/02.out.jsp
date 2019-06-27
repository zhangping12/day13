<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" buffer="0kb" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--当1）缓冲区满了
      2）刷新缓存区
      3）关闭缓存区
      4）执行完毕jsp页面
     先打印out的内容，后打印response.getWriter().write的内容--%>
<%
    for (int i = 0; i <=1024 ; i++) {
        out.write("a");
    }
    //查看缓存区大小
    System.out.println("当前缓存区大小:"+out.getBufferSize());
    //查看缓存区剩余大小
    System.out.println("缓存区剩余大小:"+out.getRemaining());
    //刷新缓存
    //out.flush();
    response.getWriter().write("123");
%>
</body>
</html>
