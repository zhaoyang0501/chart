<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>H+ 后台主题UI框架 - 登录</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/login.min.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
   <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
  
   <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
      
      

</head>

<body class="signin">
<!--[if lte IE 8]>
<div id="ie6-warning"><p>本页面采用HTML5+CSS3，您正在使用老版本 Internet Explorer ，在本页面的显示效果可能有差异。建议您升级到 <a href="http://www.microsoft.com/china/windows/internet-explorer/" target="_blank">Internet Explorer 9</a> 或以下浏览器：
    <br>
<a href="http://www.mozillaonline.com/">Firefox</a> / 
<a href="http://www.baidu.com/s?wd=google%E6%B5%8F%E8%A7%88%E5%99%A8">Chrome</a> / 
<a href="http://www.apple.com.cn/safari/">Safari</a> / 
<a href="http://www.operachina.com/">Opera</a></p></div>
<style type="text/css">
/*ie6提示*/
#ie6-warning{width:100%;background:#ffffe1;padding:5px 0;font-size:12px}
#ie6-warning p{width:960px;margin:0 auto;}
  </style>
<![endif]-->
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>在线聊天系统</h1>
                    </div>
                    <div class="m-b"></div>
                    
                    <ul class="m-b" style="height:100px">
                        
                    </ul>
                    <strong>还没有账号？ <a href="./register">立即注册»</a></strong>
                </div>
            </div>
            <div class="col-sm-5">
                <form method="post" action="gologin">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">在线聊天系统</p>
                    <input type="text" name='userName' class="form-control uname" placeholder="用户名" />
                    <input type="password" name='password' class="form-control pword m-b" placeholder="密码" />
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2015 All Rights Reserved. H+
            </div>
        </div>
    </div>
</body>
 		<script>
 		<c:if test="${tip!=null}">
		 		 toastr.success('${tip}');
 		 </c:if>
	  		
	    </script>
</html>
