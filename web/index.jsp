<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/10
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
  // http://localhost:8081/{项目名}/
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <base href="<%=basePath%>">
  </head>
  <body>
  <a href="back/main.jsp">登陆</a>
  </body>
</html>

