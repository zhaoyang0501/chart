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
	<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

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
                <div class="ibox">
                    <div class="ibox-content">
                        <h2>查找好友</h2>
                        <p>
                           			 根据昵称或者会员账号查找
                        </p>
                         <form action="${pageContext.request.contextPath}/admin/friend" method="post">
                        <div class="input-group">
                       
                            <input type="text" name="key" placeholder="查找好友" class="input form-control">
                              <span class="input-group-btn">
                                        <button type="submit" class="btn btn btn-primary"> <i class="fa fa-search"></i> 查找</button>
                              </span>
                           
                        </div>
                           </form>  
                        <div class="clients-list">
                            <ul class="nav nav-tabs">
                                <span class="pull-right small text-muted">10+ 个账号</span>
                                <li class="active"><a data-toggle="tab" href=""><i class="fa fa-user"></i> 联系人</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="slimScrollDiv" style="position: relative; width: auto; height: 100%;"><div class="full-height-scroll" style="width: auto; height: 100%;">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <tbody>
                                                <c:forEach items="${friends }" var="bean">
                                                	<tr>
                                                        <td class="client-avatar"><img alt="image" src="${pageContext.request.contextPath}/img/${bean.head}"> </td>
                                                        <td><a data-toggle="tab" href="" class="client-link">${bean.username}</a>
                                                        </td>
                                                        <td> ${bean.realname}</td>
                                                        <td class="contact-type"><i class="fa fa-envelope"> </i>
                                                        </td>
                                                        <td>  ${bean.address}</td>
                                                        <td class="client-status"><span class="label label-primary">在线</span>
                                                        </td>
                                                        
                                                         <td class="client-status">
	                                                         <a class="btn btn-success btn-outline" href="${pageContext.request.contextPath}/admin/addfriend?id=${bean.id}">
									                            <i class="fa fa-qq"> </i> 加好友
									                         </a>
                                                         </td>
                                                        
                                                    </tr>
                                                </c:forEach>
                                                   
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><div class="slimScrollBar" style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 365.112px; background: rgb(0, 0, 0);"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div></div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="slimScrollDiv" style="position: relative; width: auto; height: 100%;"><div class="full-height-scroll" style="width: auto; height: 100%;">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <tbody>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">瑞安市海诚机械有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海申弘投资发展有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link">衢州凯德竹业科技有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">北京科诺耐尔科技发展有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国，美国</td>
                                                        <td class="client-status"><span class="label label-warning">等待验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海一喜食品机械有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link"> 北京巨皓知识产权代理有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 日本</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">山东百洋工业装备有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">瑞安市海诚机械有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海申弘投资发展有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link">衢州凯德竹业科技有限公司</a>
                                                        </td>
                                                        <td>广州</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">北京科诺耐尔科技发展有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国，加拿大</td>
                                                        <td class="client-status"><span class="label label-warning">等待验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海一喜食品机械有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link"> 北京巨皓知识产权代理有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">山东百洋工业装备有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">瑞安市海诚机械有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海申弘投资发展有限公司</a>
                                                        </td>
                                                        <td>上海</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link">衢州凯德竹业科技有限公司</a>
                                                        </td>
                                                        <td>北京</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-1" class="client-link">北京科诺耐尔科技发展有限公司</a>
                                                        </td>
                                                        <td>北京</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-warning">等待验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">上海一喜食品机械有限公司</a>
                                                        </td>
                                                        <td>北京</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-3" class="client-link"> 北京巨皓知识产权代理有限公司</a>
                                                        </td>
                                                        <td>北京</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a data-toggle="tab" href="clients.html#company-2" class="client-link">山东百洋工业装备有限公司</a>
                                                        </td>
                                                        <td>北京</td>
                                                        <td><i class="fa fa-flag"></i> 中国</td>
                                                        <td class="client-status"><span class="label label-primary">已验证</span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><div class="slimScrollBar" style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div></div>
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

    <!-- Peity demo -->
    <script src="js/demo/peity-demo.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
  
		<script>
 		<c:if test="${tip!=null}">
		 		 toastr.success('${tip}');
 		 </c:if>
	    </script>

</body>

</html>