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
                        </a>
                        
                        
                        
                         <div class="col-sm-8 b-r">
                            <form class="form-horizontal" action="" method="get">
		                           <input name='id' type="hidden"/>
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>个人信息<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			
		                           			<tr>
		                           				<td>用户名</td>
		                           				<td> <input value="${user.username }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			<tr>
		                           				<td>姓名</td>
		                           				<td> <input value="${user.realname }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			
		                           			<tr>
		                           			<td>性别</td>
		                           				<td>
												 <select class="form-control">
												 	<option>男</option>
												 </select>
		                           				</td>
		                           			</tr>
		                           			
		                           				
		                           			<tr>
		                           				<td>地址</td>
		                           				<td>  <input value="${user.address }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			<tr>
		                           				<td>年龄</td>
		                           				<td>  <input value="${user.age }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			<tr>
		                           				<td>星座</td>
		                           				<td>  <input value="${user.stasign }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			
											<tr>
												<td>个性签名</td>
		                           				<td> <input value="${user.remark }" name='chinesename' type="text" class="form-control"> </td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>
												<td>密码</td>
		                           				<td> <input value="${user.password }" name='password' type="password" class="form-control"> </td>
		                           			</tr>
		                           			
		                           		
		                           			
		                           		</tbody>
		                           	</table>
		                           	<button class="btn btn-primary text-center " onclick="fun_submit()" type="button"><i class="fa fa-check"></i>&nbsp;提交修改</button>
		                           	</form>
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