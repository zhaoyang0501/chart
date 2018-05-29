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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/plugins/simditor/simditor.css" />
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/plugins/simditor/simditor-emoji.css" />
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

                <div class="ibox chat-view">

                    <div class="ibox-title">
                        <small class="pull-right text-muted">我的好友</small>找到好友并开始聊天吧
                    </div>


                    <div class="ibox-content">

                        <div class="row">

                           
                            <div class="col-md-3 col-md-offset-9">
                                <div class="chat-users">
								
								

                                    <div class="users-list">
                                        <c:forEach items="${user.users }" var="bean">
											<div class="chat-user ${bean.id==friend.id?"chat-acvite":"" }" >
											 <span class="pull-right label label-primary">在线</span>
	                                            <img class="chat-avatar" src="${pageContext.request.contextPath}/img/${bean.head }" alt="">
	                                            <div class="chat-user-name">
	                                                <a href="${pageContext.request.contextPath}/admin/chatroom?fid=${bean.id }">${bean.username }</a>
	                                           
	                                            </div>
	                                        </div>
	                                        </a>
										</c:forEach>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

            </div>
            <div class="footer">
                <div class="pull-right">
                    By：<a href="../../index.html" target="_blank"> blog</a>
                </div>
                <div>
                    <strong>Copyright</strong> H+ &copy; 2016
                </div>
            </div>

        </div>
    </div>

    <!-- 全局js -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>



    <!-- 自定义js -->
    <script src="js/content.min.js?v=1.0.0"></script>
<script src="//cdn.bootcss.com/sockjs-client/1.0.3/sockjs.js"></script>
<script src="//cdn.bootcss.com/stomp.js/2.3.3/stomp.js"></script>
</body>

</html>