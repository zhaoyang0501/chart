<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min.css?v=3.2.0" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
<style type="text/css">
.wizard-big.wizard > .content {
    min-height: 520px;
}
.bootstrap-select img{
width: 26px;
}
.wizard > .content > .body ul > li {
     display:block ; 
}
</style>

</head>

<body class="gray-bg top-navigation">
  <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="index_v5.html#" class="navbar-brand">在线聊天</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a aria-expanded="false" role="button" href="index.html"> 返回首页</a>
                            </li>
                             <li class="active">
                                <a aria-expanded="false" role="button" href="index.html"> 我的资料</a>
                            </li>
                            <li class="active">
                                <a aria-expanded="false" role="button" href="index.html"> 查找好友</a>
                            </li>
                           
                           <li class="active">
                                <a aria-expanded="false" role="button" href="index.html"> 退出</a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
 <div class="wrapper wrapper-content animated fadeInRight">
       
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>欢迎注册web聊天系统</h5>
                    </div>
                    <div class="ibox-content">
                        <h2>
                                请根据向导完成账号注册
                            </h2>
                        <p>
                            请认真填写个人资料注册账号
                        </p>

                        <form id="form" action="${pageContext.request.contextPath}/admin/register" method="post" class="wizard-big">
                            <h1>账户</h1>
                            <fieldset>
                                <h2>账户信息</h2>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group">
                                            <label>用户名 *</label>
                                            <input id="username" name="username" type="text" class="form-control required">
                                        </div>
                                        <div class="form-group">
                                            <label>密码 *</label>
                                            <input id="password" name="password" type="password" class="form-control required">
                                        </div>
                                        <div class="form-group">
                                            <label>确认密码 *</label>
                                            <input id="confirm" name="confirm" type="password" class="form-control required">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="text-center">
                                            <div style="margin-top: 20px">
                                                <i class="fa fa-sign-in" style="font-size: 180px;color: #e5e5e5 "></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            
                            <h1>个人资料</h1>
                            <fieldset>
                                <h2>个人资料信息</h2>
                                <div class="row">
                                    <div class="col-sm-8">
                                         <div class="form-group">
                                            <label>头像*</label>
                                            <select  class="form-control required" id='head' name="head">
		                                         <option value="a1.jpg" data-content="<img alt='image' src='/chart/img/a1.jpg'>">头像1</option>
		                                         <option value="a2.jpg" data-content="<img alt='image' src='/chart/img/a2.jpg'>">头像2</option>
		                                         <option value="a3.jpg" data-content="<img alt='image' src='/chart/img/a3.jpg'>">头像2</option>
		                                         <option value="a4.jpg" data-content="<img alt='image' src='/chart/img/a4.jpg'>">头像2</option>
		                                         <option value="a5.jpg" data-content="<img alt='image' src='/chart/img/a5.jpg'>">头像2</option>
                                  			  <option value="a6.jpg" data-content="<img alt='image' src='/chart/img/a6.jpg'>">头像2</option>
                                  			  <option value="a7.jpg" data-content="<img alt='image' src='/chart/img/a7.jpg'>">头像2</option>
                                  			  <option value="a8.jpg" data-content="<img alt='image' src='/chart/img/a8.jpg'>">头像2</option>
                                  			  <option value="a9.jpg" data-content="<img alt='image' src='/chart/img/a9.jpg'>">头像2</option>
                                  			  
                                  			  </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>昵称 *</label>
                                            <input id="nickname" name="nickname" type="text" class="form-control required">
                                        </div>
                                         
                                         <div class="form-group">
                                            <label>性别 *</label>
                                            <select  class="form-control required" name="sex">
		                                        <option value="男">男</option>
		                                        <option value="女">女</option>
                                  			  </select>
                                        </div>
                                       
                                         <div class="form-group">
                                            <label>年龄 *</label>
                                            <input id="age" name="age" type="text" class="form-control required">
                                        </div>
                                        <div class="form-group">
                                            <label>问题 *</label>
                                            <input id="question" name="question" type="text" class="form-control required">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>答案 *</label>
                                            <input id="answer" name="answer" type="text" class="form-control required">
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                            <h1>详细资料</h1>
                            <fieldset>
                               <h2>详细资料</h2>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group">
                                            <label>真实姓名 </label>
                                            <input id="name" name="realname" type="text" class="form-control ">
                                        </div>
                                         
                                         <div class="form-group">
                                            <label>星座 </label>
                                            <select  class="form-control " name="stasign">
												<option value="白羊座">白羊座</option>
												<option value="金牛座">金牛座</option>
												<option value="金牛座">金牛座</option>
												<option value="双子座">双子座</option>
												<option value="巨蟹座">巨蟹座</option>
												<option value="狮子座">狮子座</option>
												<option value="处女座">处女座</option>
												<option value="天秤座">天秤座</option>
												<option value="天蝎座">天蝎座</option>
												<option value="射手座">射手座</option>
												<option value="摩羯座">摩羯座</option>
												<option value="水瓶座">水瓶座</option>
												<option value="双鱼座">双鱼座</option>
											</select>
                                        </div>
                                       
                                         <div class="form-group">
                                            <label>血型</label>
                                            <select  class="form-control " name="bloodtype">
                                           		<option value=""></option>
												<option value="A">A</option>
												<option value="B">B</option>
												<option value="AB">AB</option>
												<option value="O">O</option>
											</select>
                                        </div>
                                        <div class="form-group">
                                            <label>地址 </label>
                                            <input id="address" name="address" type="text" class="form-control">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>个性签名 </label>
                                            <textarea class="form-control" rows="3" cols="" name='remark'></textarea>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                            <h1>完成</h1>
                            <fieldset>
                                <h2>条款</h2>
                                <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
                                <label for="acceptTerms">我同意注册条款</label>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>


    <!-- Steps -->
    <script src="${pageContext.request.contextPath}/js/plugins/staps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
  
	<script>
	
	

		
	
		$(document).ready(function() {
			$("#form").steps({
				bodyTag : "fieldset",
				onStepChanging : function(d, a, b) {
					if (a > b) {
						return true
					}
					var c = $(this);
					if (a < b) {
						$(".body:eq(" + b + ") label.error", c).remove();
						$(".body:eq(" + b + ") .error", c).removeClass("error")
					}
					c.validate().settings.ignore = ":disabled,:hidden";
					return c.valid()
				},
				onFinishing : function(c, a) {
					var b = $(this);
					b.validate().settings.ignore = ":disabled";
					return b.valid()
				},
				onFinished : function(c, a) {
					var b = $(this);
					b.submit()
				}
			}).validate({
				errorPlacement : function(a, b) {
					b.before(a)
				},
				rules : {
					confirm : {
						equalTo : "#password"
					}
				}
			});
			
			$('#head').selectpicker();
		});
	</script>


</body>

</html>