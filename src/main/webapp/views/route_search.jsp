<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html ng-app="RouteSearchApp">
	<head>
		<title>Route</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap/3.3.0/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${ctx}/resources/css/app.css"/>
		
		<script type="text/javascript">
			var ctx = '${ctx}';
			var sysVersion = '${sysVersion}';
		</script>
		<script src="${ctx}/resources/js/angular/angular.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/ui-bootstrap-tpls-0.12.0.min.js"></script>
    	<script src="${ctx}/ctrl/RouteSearch.js?v=${version}"></script>
	</head>
	
	<body ng-controller="RouteSearchCtrl">
		<header class="navbar navbar-inverse navbar-fixed-top">
		    <div class="navbar-inner">
		        <div class="container">
		            <div class="navbar-header">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-3" ng-click="isCollapsed = !isCollapsed">
		                    <span class="sr-only">Toggle navigation</span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		                <a class="navbar-brand visible-xs" href="#">UI Bootstrap</a>
		            </div>
		            <nav class="hidden-xs">
		                <ul class="nav navbar-nav">
		                    <a href="#top" role="button" class="navbar-brand">欢迎来到我的{{sysname}}</a>
		                    <li class="dropdown" dropdown>
		                        <a role="button" class="dropdown-toggle" dropdown-toggle>
		                            	我的菜单 <b class="caret"></b>
		                        </a>
		                        <ul class="dropdown-menu">
		                            <li><a href="#accordion">入库</a></li>
		                            <li><a href="#accordion">出库</a></li>
		                            <li><a href="#accordion">查询</a></li>
		                            <li><a href="#accordion">反馈</a></li>
		                        </ul>
		                    </li>
		                    <li><a href="#getting_started">我的物流</a></li>
		                    <li><a href="#getting_started">我要发货</a></li>
		                    <li><a href="#getting_started">查询路线</a></li>
		                    <li><a href="#getting_started">查询网点</a></li>
		                    <li><a href="#getting_started">物流跟踪</a></li>
		                </ul>
		            </nav>
		            <ul class="nav navbar-nav navbar-right">
		            	<li><a ng-click="openLogin()">登录</a></li>
		            	<li><a ng-click="regist()">免费注册</a></li>
		            	<li><a ng-click="openLogin()">意见和建议</a></li>
		            </ul>
		        </div>
		    </div>
		</header>
		
		<div role="main" style="padding-top: 60px;">
			<div class="container">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label for="inputEmail" class="col-sm-1 col-sm-offset-2 control-label">开始</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="inputEmail" placeholder="开始" ng-focus="cityFocus();" ng-blur="cityBlur();">
						</div>
						<label for="inputEmail" class="col-sm-1 control-label">结束</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="inputEmail" placeholder="结束">
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-primary">查询</button>
						</div>
					</div>
				</form>
				<div class="row">
					<div class="list-group">
						<a href="#" class="list-group-item">
						  <h4 class="list-group-item-heading">List group item heading</h4>
						  <p class="list-group-item-text">...</p>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item">
						  <h4 class="list-group-item-heading">List group item heading</h4>
						  <p class="list-group-item-text">...</p>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item">
						  <h4 class="list-group-item-heading">List group item heading</h4>
						  <p class="list-group-item-text">...</p>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item">
						  <h4 class="list-group-item-heading">List group item heading</h4>
						  <p class="list-group-item-text">...</p>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item">
						  <h4 class="list-group-item-heading">List group item heading</h4>
						  <p class="list-group-item-text">...</p>
						</a>
					</div>
				</div>
				<div class="row">
					<nav class="pull-right">
						<ul class="pagination">
							<li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		
	</body>
</html>