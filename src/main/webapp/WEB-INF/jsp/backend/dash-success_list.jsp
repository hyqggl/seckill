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
            <h1 class="page-header">清单查询</h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th class="col-md-2 text-center">商品ID</th>
                        <th class="col-md-3 text-center">手机号</th>
                        <th class="col-md-2 text-center">交易状态</th>
                        <th class="col-md-3 text-center">交易日期</th>
                        <th class="col-md-2 text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="suk" items="${success_list}">
                        <tr>
                            <td class="text-center">${suk.seckillId}</td>
                            <td class="text-center">${suk.userPhone}</td>
                            <td class="text-center">${suk.state}</td>
                            <td class="text-center">
                                <fmt:formatDate value="${suk.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                            <td class="text-center">
                                <a class="btn btn-info" href="#">详情</a>
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

