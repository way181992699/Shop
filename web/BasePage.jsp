<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/12
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <div style="margin-top: 15px">
       <span style="color: red"> <input type="button" value="首页" onclick="beginPage();">
        <input type="button" value="上一页" onclick="frontPage();">
        <input type="button" value="下一页" onclick="nextPage();">
        <input type="button" value="尾页" onclick="endPage();">

         当前页数为 : ${page.currentPage+1}, 总页数 :${page.total+1}。
        跳转到：<input style="width: 40px" id="tz" type="number" oninput="tzPage(this.value)" value=${page.currentPage+1}>。
        选择跳转到：
        <select onchange="goPage(this.value);">
            <c:forEach var="i" begin="0" end="${page.total}">
                <option value="${i}" ${i eq page.currentPage  ? 'selected':''}>${i+1}</option>
            </c:forEach>
        </select> 页
        选择查看：
        <select onchange="sizePage(this.value);">
            <option value="1" ${page.pageSize eq 1 ? 'selected':''} >1</option>
            <option value="5" ${page.pageSize eq 5 ? 'selected':''} >5</option>
            <option value="10" ${page.pageSize eq 10 ? 'selected':''} >10</option>
            <option value="20" ${page.pageSize eq 20 ? 'selected':''} >20</option>
            <option value="50" ${page.pageSize eq 50 ? 'selected':''} >50</option>
            <option value="100" ${page.pageSize eq 100 ? 'selected':''}  >100</option>
        </select> 条记录
        </span>
    </div>

  </div>


<script type="text/javascript">
    function nextPage() {

        // 1.将currentPage+1
        document.getElementById("currentPage").value =${page.currentPage+1}>=${page.total}? ${page.total} :${page.currentPage+1};
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function frontPage() {

        // 1.将currentPage+1
        document.getElementById("currentPage").value =${page.currentPage-1 le 0 ?0:page.currentPage-1 };
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function goPage(val) {

        // 1.将currentPage+1
        document.getElementById("currentPage").value = val;
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function sizePage(val) {

        // 1.将currentPage+1
        document.getElementById("currentPage").value =0;
        document.getElementById("PageSize").value = val;
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function tzPage(val) {

        // 1.将currentPage+1
        document.getElementById("currentPage").value = val - 1 >=${page.total} ? ${page.total} : val - 1 <= 0 ? 0 : val - 1;
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function beginPage() {

        // 1.将currentPage+1
        document.getElementById("currentPage").value = 0;
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }

    function endPage() {

        // 1.将currentPage+1
        document.getElementById("currentPage").value =${page.total};
        document.getElementById("PageSize").value = ${page.pageSize};
        // 2.将表单数据提交
        document.getElementById("pageForm").submit();
    }
</script>
