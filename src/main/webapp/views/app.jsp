<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html ng-app="myApp">
	<head>
		<title>App</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-3.1.1/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${ctx}/resources/css/app.css"/>
		<script type="text/javascript">
			var ctx = '${ctx}';
		</script>
		<script src="${ctx}/resources/js/angular.min.js"></script>
		<script src="${ctx}/resources/js/ui-bootstrap-tpls-0.12.0.min.js"></script>
    	<script src="${ctx}/ctrl/app.js"></script>
	</head>

	<body ng-controller="MainCtrl">
		<header class="navbar navbar-default navbar-fixed-top">
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
		                    <a href="#top" role="button" class="navbar-brand">
		                        欢迎来到{{sysname}}
		                    </a>
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
		                    <li><a href="#getting_started">Getting started</a></li>
		                </ul>
		            </nav>
		            <ul class="nav navbar-nav navbar-right">
		            	<li><a ng-click="openLogin()">登录</a></li>
		            </ul>
		        </div>
		    </div>
		</header>
		<div class="header-placeholder"></div>
		<div role="main">
			<header class="bs-header text-center" id="overview">
				<div class="container" ng-controller="SearchCtrl">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" class="form-control" >
							</div>
							<button type="button" class="btn btn-default col-sm-2">搜索</button>
						</div>
					</form>
				</div>
			</header>
		
			<div ng-controller="TestCtrl">
				<h2>{{name}}</h2>
			</div>
		</div>
	</body>
</html>
