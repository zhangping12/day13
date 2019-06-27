<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>百万富翁数字竞猜游戏</title>
</head>

<body>
<%
    //从request域中取出信息
    String msg = (String)request.getAttribute("msg");
    if(msg!=null){
        out.write("<font color='red'>"+msg+"</font>");
    }
%>
<%
    //获取竞猜次数
    Integer times = (Integer)request.getAttribute("times");
    if(times!=null){
        out.write(",你还有"+(5-times)+"次机会！");
    }
%>

<form action="/GuessServlet" method="post">
    请输入30以下的整数：<input type="text" name="lucyNo"/><br/>
    <%
        if(times!=null){
    %>
    <input type="hidden" name="times" value="<%=times %>"/>
    <%
        }
    %>
    <input type="submit" value="开始竞猜"/>
</form>
</body>
</html>

