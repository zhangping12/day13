<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2019/6/27
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL语</title>
</head>
<body>
<%
    String name = "rose";
    //放入域中
    //pageContext.setAttribute("name",name);
    pageContext.setAttribute("name",name,PageContext.REQUEST_SCOPE);
%>
<%=name %>
<br/>
<%--
	  1)从四个域自动搜索
	   --%>
EL表达式：${name}
<%--
    ${name}等价于
    <%=pageContext.findAttribute("name")%>
--%>

<%--
	    2） 从指定的域中获取数据
	    --%>
EL表达式2：${requestScope.name}
<%--
	    	${requestScope.name } 等价于
	    	 <%= pageContext.getAttribute("name",PageContext.REQUEST_SCOPE)%>

	     --%>
</body>
</html>
