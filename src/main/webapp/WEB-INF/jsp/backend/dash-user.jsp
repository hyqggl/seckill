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
            <h1 class="page-header">用户管理</h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th class="col-md-1 text-center">ID</th>
                        <th class="col-md-2 text-center">用户名</th>
                        <th class="col-md-2 text-center">手机号</th>
                        <th class="col-md-2 text-center">Email</th>
                        <th class="col-md-2 text-center">注册日期</th>
                        <th class="col-md-1 text-center">日志</th>
                        <th class="col-md-2 text-center">详细信息</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td class="text-center">${user.id}</td>
                            <td class="text-center">${user.name}</td>
                            <td class="text-center">${user.phone}</td>
                            <td class="text-center">${user.email}</td>
                            <td class="text-center">
                                <fmt:formatDate value="${user.registerDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                            <td class="text-center">${user.logId}</td>
                            <td class="text-center">
                                <a class="btn btn-info" href="#">详情</a>
                                <a class="btn btn-danger" href="#">删除</a>
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

