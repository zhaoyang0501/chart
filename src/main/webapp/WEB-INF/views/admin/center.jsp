<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 首页示例四</title>

   <link rel="shortcut icon" href="favicon.ico">
     <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min.css?v=4.1.0" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

<style type="text/css">
.chat-message .send{
float: 	right;
}
.chat-message .get{
float: 	right;
}
.chat-acvite{
    background-color: #F2627C;
}
</style>
</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
               	<%@include file="./head.jsp" %>
            </div>
            <div class="wrapper wrapper-content">
               <div class="row">
            <div class="col-sm-12">
                <div class="contact-box">
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="${pageContext.request.contextPath}/img/a2.jpg">
                            </div>
                        </div>
                        </a><div class="col-sm-8"><a href="profile.html">
                            <h3><strong>${user.realname }（ ${user.username }）</strong></h3>
                            <p><i class="fa fa-map-marker"></i> ${user.address }</p>
                            </a><address><a href="profile.html">
                            <strong>Baidu, Inc.</strong><br>
                            	年龄:${user.age }<br>
                            	性别:${user.sex }<br>
                            	星座:${user.stasign }<br>
                            	血型:${user.bloodtype }<br>
                            	个性签名:${user.remark }<br>
                           </a><br>
                            
                        </address>
                        </div>
                        <div class="clearfix"></div>
                    
                </div>
            </div>
           
        </div>
            </div>
            
        </div>
    </div>

    <!-- 全局js -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>



    <!-- 自定义js -->
    <script src="js/content.min.js?v=1.0.0"></script>


    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Peity demo -->
    <script src="js/demo/peity-demo.min.js"></script>

<script src="//cdn.bootcss.com/sockjs-client/1.0.3/sockjs.js"></script>
<script src="//cdn.bootcss.com/stomp.js/2.3.3/stomp.js"></script>
</body>

</html>