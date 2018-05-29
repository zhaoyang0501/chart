<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/news"> 首页</a>
                            </li>
                            
                             <li class="active">
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/friend"> 查找好友</a>
                            </li>
                            
                             <li class="active">
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/index"> 在线聊天</a>
                            </li>
                            
                            <li class="active">
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/ingrouproom?id=1"> 聊天室</a>
                            </li>
                            
                             <li class="active">
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/center"> 我的资料</a>
                            </li>
                           
                            <li class="active">
                                <a aria-expanded="false" role="button" href="https://www.120ask.com/"> 在线医生</a>
                            </li>
                           <li class="active">
                                <a aria-expanded="false" role="button" href="${pageContext.request.contextPath}/admin/loginout"> 退出</a>
                            </li>

                        </ul>
                    </div>
                </nav>