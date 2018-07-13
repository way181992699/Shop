<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/11
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    // http://localhost:8081/{项目名}/
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>添加商品类别</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="js/select-ui.min.js"></script>
    <script type="text/javascript" src="editor/kindeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function (e) {
            $(".select1").uedSelect({
                width: 345
            });
            $(".select2").uedSelect({
                width: 167
            });
            $(".select3").uedSelect({
                width: 100
            });
        });
    </script>

</head>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">商品类别列表</a></li>
        <li><a href="#">${status=="add"?"添加":"修改"}</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>${status=="add"?"添加":"修改"}</span></div>
    <form action="back/McTypeServlet?task=${status}" method="post">
        <ul class="forminfo">
            <input hidden name="typeid" value="${type.typeid}"/>
            <li><label>商品类别名称</label><input name="typename" type="text" class="dfinput" value="${type!=null?type.typename:""}"/><i>名称尽量少于30个字</i></li>
            <li><label>父类类别名称</label>
                <div class="vocation">
                    <select class="select1" name="fatherid">
                        <option value="0">顶层父类</option>
                        <c:forEach var="father" items="${list}">
                            <option value="${father.typeid}" ${father.typeid eq type.fatherid ? 'selected = "selected"' :" " }>${father.typename}</option>
                        </c:forEach>
                    </select>
                </div>
            </li>

            <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
        </ul>
    </form>


</div>


<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>

