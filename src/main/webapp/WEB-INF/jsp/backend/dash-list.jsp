<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="da-header.jsp"%>

<body>
<%@include file="back-nav.jsp"%>

<div class="container-fluid">
    <div class="row">

        <%@include file="back-nav-sidebar.jsp"%>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">商品管理</h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th class="col-md-1 text-center">ID</th>
                        <th class="col-md-2 text-center">名称</th>
                        <th class="col-md-1 text-center">价格</th>
                        <th class="col-md-1 text-center">库存</th>
                        <th class="col-md-2 text-center">开始时间</th>
                        <th class="col-md-2 text-center">结束时间</th>
                        <th class="col-md-2 text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="sk" items="${seckillList}">
                        <tr>
                            <td class="text-center">${sk.seckillId}</td>
                            <td class="text-center">${sk.name}</td>
                            <td class="text-center">${sk.price}</td>
                            <td class="text-center">${sk.number}</td>
                            <td class="text-center">
                                <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                            <td class="text-center">
                                <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                            <td class="text-center">
                                <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">详情</a>
                                <a class="btn btn-danger" href="/seckill/${sk.seckillId}/detail" target="_blank">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/bs-footer.jsp"%>
</body>
</html>
