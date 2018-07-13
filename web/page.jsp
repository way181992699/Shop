<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/11
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>手动分页</title>
</head>
<body>
<c:forEach var="list" items="${page.list}">
    ${list.id}----
    ${list.name}----
    ${list.password}<br/>
</c:forEach>
<jsp:include page="basePage.jsp"></jsp:include>

<div style="margin-bottom: 15px">
    <form action="page" id="pageForm">
        <input type="hidden" id="currentPage" name="currentPage">
        <input type="hidden" id="PageSize" name="pageSize">
    </form>
</div>

</body>
</html>
