<%--
  Created by IntelliJ IDEA.
  User: WDS
  Date: 2019/1/13
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>品牌列表（分页）</title>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">
    <script>
        //查询的手动提交方式
        function search(currentPage) {
            if(currentPage == null){
                var currentPage = $("#currentPage").val();
            }else{
                var currentPage = currentPage;
                if(currentPage < 1 || currentPage > ${pageInfo.pages}){
                    return;
                }
            }
            var url = "/brandList.do?currentPage="+currentPage;
            window.location.href = url;
        }
    </script>
</head>
<body>
<input type="hidden" name="currentPage" id="currentPage" value="${pageInfo.pageNum}">
<div class="modal-body">
    <table class="table table-hover table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>品牌名称</th>
                <th>品牌状态</th>
                <th>创建时间</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach begin="0" end="${brandList.size()}" items="${brandList}" step="1" var="brand">
            <tr>
                <td>${brand.id}</td>
                <td>${brand.name}</td>
                <td>${brand.state}</td>
                <td><fmt:formatDate value="${brand.ctime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<c:if test="${brandList.size() != 0}">
    <center>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li  onclick="search(1)"><a href="javascript:void(0);"><span>首页</span></a></li>
                <li  onclick="search(${pageInfo.prePage})">
                    <a href="javascript:void(0);"  aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach step="1" var="i" begin="1" end="${pageInfo.pages}">
                    <li  onclick="search(${i})"><a href="javascript:void(0);"><span <c:if test="${i==pageInfo.pageNum}"> style = 'color:red;' </c:if>> ${i}</span></a></li>
                </c:forEach>
                <li onclick="search(${pageInfo.nextPage})">
                    <a href="#" class="page"  aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                    <%--实现方法一，但是目前不可以--%>
                <li onclick="search(${pageInfo.pages})"><a href="javascript:void(0);"><span>尾页</span></a></li>
            </ul>
        </nav>
    </center>
</c:if>
</body>
</html>
