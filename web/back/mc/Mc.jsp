<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/11
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    // http://localhost:8081/{项目名}/
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品分类列表</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".click").click(function () {
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function () {
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function () {
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function () {
                $(".tip").fadeOut(100);
            });

        });
    </script>
    <
    <script type="text/javascript">
        function deltype(id) {

            if (window.confirm("你确定要删除该数据吗？")) {

                window.location.href = "back/McTypeServlet?task=del&typeid=" + id;
            }

        }
    </script>


</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">数据表</a></li>
        <li><a href="#">基本内容</a></li>
    </ul>
</div>

<div class="rightinfo">


    <div class="tools">

        <ul class="toolbar">
            <a href="back/McTypeServlet?task=getFather&status=add">
                <li><span><img src="images/t01.png"/></span>添加</li>
            </a>
            <li class="click"><span><img src="images/t02.png"/></span>修改</li>
            <li><span><img src="images/t03.png"/></span>删除</li>
            <li><span><img src="images/t04.png"/></span>统计</li>
        </ul>


        <ul class="toolbar1">
            <li><span><img src="images/t05.png"/></span>设置</li>
        </ul>

    </div>

    <table class="tablelist">
        <thead>
        <tr>
            <th><input name="" type="checkbox" value="" checked="checked"/></th>
            <th>商品类别编号<i class="sort"><img src="images/px.gif"/></i></th>
            <th>商品名称</th>
            <th>商品数量</th>
            <th>商品价格</th>
            <th>商品小类</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="mc" items="${page.list}">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${mc.mcid }</td>
                <td>${mc.mcname }</td>
                <td>${mc.quantity }</td>
                <td>${mc.price }</td>
                <td>${mc.smalltypeid }</td>
                <td>
                    <a href="back/McTypeServlet?task=update&typeid=${type.typeid}&status=edit"
                       class="tablelink">修改</a>
                    <a href="JavaScript:deltype(${type.typeid});" class="tablelink"> 删除</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>

    </table>

    <div>
        <form action="back/McServlet" id="pageForm">
            <input type="hidden" id="currentPage" name="currentPage">
            <input type="hidden" id="PageSize" name="pageSize">
        </form>
        <jsp:include page="../../BasePage.jsp"></jsp:include>
    </div>


    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="images/ticon.png"/></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" type="button" class="sure" value="确定"/>&nbsp;
            <input name="" type="button" class="cancel" value="取消"/>
        </div>

    </div>


</div>





<script type="text/javascript">
$('.tablelist tbody tr:odd').addClass('odd');
</script>

<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>

</body>
</html>

