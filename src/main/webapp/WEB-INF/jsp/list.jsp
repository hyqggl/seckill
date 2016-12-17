<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 引入JSTL --%>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀列表</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<%@include file="common/navigation.jsp"%>

<br>
<br>
<br>
    <%-- 页面显示部分 --%>
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading text-center">
                <h2>秒杀列表</h2>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="col-md-2 text-center">名称</th>
                            <th class="col-md-2 text-center">价格</th>
                            <th class="col-md-3 text-center">库存</th>
                            <!--<th>开始时间</th>
                            <th>结束时间</th> -->
                            <th class="col-md-3 text-center">状态</th>
                            <th class="col-md-2 text-center">商品详情</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="sk" items="${list}">
                        <tr>
                            <td class="text-center">${sk.name}</td>
                            <td class="text-center">${sk.price}</td>
                            <td>
                                <div class="progress">
                                    <c:if test="${timenow>sk.endTime}">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="${sk.number}"
                                             aria-valuemin="0" aria-valuemax="${sk.initAmount}"
                                             style="width: ${sk.number/sk.initAmount*100}%">
                                             ${sk.number}
                                        </div>
                                    </c:if>
                                    <c:if test="${(timenow>=sk.startTime)&&(timenow<=sk.endTime)}">
                                         <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${sk.number}"
                                              aria-valuemin="0" aria-valuemax="${sk.initAmount}"
                                              style="width: ${sk.number/sk.initAmount*100}%">
                                             ${sk.number}
                                         </div>
                                    </c:if>
                                    <c:if test="${timenow<sk.startTime}">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="${sk.number}"
                                             aria-valuemin="0" aria-valuemax="${sk.initAmount}"
                                             style="width: ${sk.number/sk.initAmount*100}%">
                                                ${sk.number}
                                        </div>
                                    </c:if>
                                </div>
                            </td>
                            <!--<td>
                                <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                            <td>
                                <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td> -->
                            <td class="text-center">
                                <c:if test="${timenow>sk.endTime}">已结束</c:if>
                                <c:if test="${(timenow>sk.startTime)&&(timenow<sk.endTime)}">
                                <a class="btn btn-success" href="#">秒杀中</a>
                                </c:if>
                                <c:if test="${timenow<sk.startTime}">
                                    开始时间：
                                    <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </c:if>
                            </td>
                            <td class="text-center">
                                <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">link</a>
                            </td>
                            <td></td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
