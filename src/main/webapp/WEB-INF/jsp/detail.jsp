<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SECKILL</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Default</a></li>
                <li><a href="#">Static top</a></li>
                <li class="active"><a href="#">Fixed top</a></li>
            </ul>
        </div>
    </div>
</nav>

<br>
<br>
<br>

    <div class="container">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                 <h1>${seckill.name}</h1>
            </div>

             <div class="panel-body">
                  <h2 class="text-danger">
                      <%-- 显示time图标 --%>
                      <span class="glyphicon glyphicon-time"></span>
                      <%-- 展示倒计时 --%>
                      <span class="glyphicon" id="seckill-box"></span>
                  </h2>
             </div>
        </div>
    </div>
    <br>
    <br>

    <div class="container">
        <div class="panel panel-default text-center">
            <div class="panel-heading">
                <h1>商品详情</h1>
            </div>

            <div class="panel-body">

            </div>
         </div>
    </div>

    <%-- 登录弹出层，输入电话 --%>
    <div id="killPhoneModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title text-center">
                        <span class="glyphicon glyphicon-phone"></span>秒杀电话：
                    </h3>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2">
                            <input type="text" name="killPhone" id="killPhoneKey"
                                    placeholder="填手机号" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <%-- 验证信息 --%>
                    <span id="killPhoneMessage" class="glyphicon"></span>
                    <button type="button" id="killPhoneBtn" class="btn btn-success">
                        <span class="glyphicon glyphicon-phone"></span>
                        Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%-- JQuery countdown --%>
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>
<%-- JQuery cookie --%>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%-- 交互逻辑 --%>
<script src="/resources/script/seckill.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        //使用EL传参
        seckill.detail.init({
            seckillId : ${seckill.seckillId},
            startTime : ${seckill.startTime.time},
            endTime   : ${seckill.endTime.time}
        })
    })
</script>
</html>
