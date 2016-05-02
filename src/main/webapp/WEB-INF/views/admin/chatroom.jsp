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

                <div class="ibox chat-view">

                    <div class="ibox-title">
                        <small class="pull-right text-muted">最新消息：2016-02-02 18:39:23</small>与${friend.realname }聊天中....
                    </div>


                    <div class="ibox-content">

                        <div class="row">

                            <div class="col-md-9 ">
                                <div class="chat-discussion" id='chat_div'>
                                </div>
                            </div>
                            
                            <div class="col-md-3">
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
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="chat-message-form">

                                    <div class="form-group">

                                        <textarea class="form-control message-input" id="message" placeholder="输入消息内容，按回车键发送"></textarea>
                                    </div>
                                     <div class="form-group">
									 	<button class="btn btn btn-primary" type="button" onclick="sendMessage();">发送
                                      	</button>
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
<script>
	 $(document).ready(function(){
		 connect();
	 });
        var stompClient = null;
             
        function setConnected(connected) {
        }
             
        function connect() {
            var socket = new SockJS('/chart/hello');
            stompClient = Stomp.over(socket);
            stompClient.connect({}, function(frame) {
                setConnected(true);
                console.log('Connected: ' + frame);
                stompClient.subscribe('/userChat/chat/${user.id}', function(greeting){
                    var t=JSON.parse(greeting.body);
                    $("#chat_div").append(
                            "<div class='chat-message'>"+
                            " <img class='message-avatar send' src='${pageContext.request.contextPath}/img/"+t.formuser.head+"' alt='''>"+
                            " <div class='message'>"+
                            "     <a class='message-author' href=''> "+t.formuser.realname+" </a>"+
                            "     <span class='message-date'>  2016-02-02 - 11:12:36 </span>"+
                            "    <span class='message-content'>"+
                            t.remark+
                            "    </span>"+
                            " </div>"+
                       	    "  </div>"		
                            );
                });
            });
        }
             
        function disconnect() {
            if (stompClient != null) {
                stompClient.disconnect();
            }
            setConnected(false);
            console.log("Disconnected");
        }
             
        function sendMessage() {
            var message = $("#message").val();
            $("#chat_div").append(
            "<div class='chat-message chat-message-send'>"+
            " <img class='message-avatar send' src='${pageContext.request.contextPath}/img/${user.head}' alt='''>"+
            " <div class='message'>"+
            "     <a class='message-author' href=''> ${user.realname} </a>"+
            "     <span class='message-date'>  2016-02-02 - 11:12:36 </span>"+
            "    <span class='message-content'>"+
            message+
            "    </span>"+
            " </div>"+
       	    "  </div>"		
            );
            stompClient.send("/websocket/hello", {}, JSON.stringify({ 'fromuserid':${user.id}, 'remark': message,'userid':${friend.id}}));
        }
     
        function showGreeting(message) {
            var response = document.getElementById('response');
            var p = document.createElement('p');
            p.style.wordWrap = 'break-word';
            p.appendChild(document.createTextNode(message));
            response.appendChild(p);
        }
    </script>
</body>

</html>