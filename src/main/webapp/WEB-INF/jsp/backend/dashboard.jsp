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
            <h1 class="page-header">Dashboard</h1>

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="../../../resources/img/pholder.svg" class="img-circle img-responsive" alt="Generic placeholder thumbnail">
                    <h4>当前在线用户</h4>
                    <span class="text-muted">Users online</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="../../../resources/img/pholder.svg" class="img-circle img-responsive" alt="Generic placeholder thumbnail">
                    <h4>当前活跃商品数</h4>
                    <span class="text-muted">Active goods</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="../../../resources/img/pholder.svg" class="img-circle img-responsive" alt="Generic placeholder thumbnail">
                    <h4>今日流量</h4>
                    <span class="text-muted">Network flow</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="../../../resources/img/pholder.svg" class="img-circle img-responsive" alt="Generic placeholder thumbnail">
                    <h4>今日新增用户</h4>
                    <span class="text-muted">New users</span>
                </div>
            </div>

            <h2 class="sub-header">概况</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>日期</th>
                        <th>尚有商品量</th>
                        <th>日交易量</th>
                        <th>日新增用户</th>
                        <th>累计用户量</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td>Lorem</td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/bs-footer.jsp"%>
</body>
</html>
