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
		            	<li><a ng-click="openLogin()">免费注册</a></li>
		            	<li><a ng-click="openLogin()">意见和建议</a></li>
		            </ul>
		        </div>
		    </div>
		</header>
		<div class="header-placeholder"></div>
		<div role="main">
			<div class="container">
				<div class="row" style="padding-top: 60px;">
					<div class="col-md-4" ng-controller="SearchTabsCtrl">
						<tabset vertical="false" justified="false" type="tabs">
						  <tab heading="查询线路">Justified content</tab>
						  <tab heading="查询网点">Short Labeled Justified content</tab>
						  <tab heading="物流跟踪">Long Labeled Justified content</tab>
						</tabset>
						 <button type="button" class="btn btn-primary pull-right">查询</button>
					</div>
					<div class="col-md-4" ng-controller="CarouselCtrl">
						<div>
							<carousel interval="myInterval">
							  <slide ng-repeat="slide in slides" active="slide.active">
							    <img ng-src="{{slide.image}}" style="margin:auto;">
							    <div class="carousel-caption">
							      <h4>Slide {{$index}}</h4>
							      <p>{{slide.text}}</p>
							    </div>
							  </slide>
							</carousel>
						</div>
					</div>
					<div class="col-md-4">
						其它信息
					</div>
				</div>
				
				<!--  
				<div class="row" ng-controller="CarouselBrandCtrl">
					<div style="height: 60px">
						<carousel interval="myInterval">
						  <slide ng-repeat="slide in slides" active="slide.active">
						    <img ng-src="{{slide.image}}" style="margin:auto;">
						    <div class="carousel-caption">
						      <h4>Slide {{$index}}</h4>
						      <p>{{slide.text}}</p>
						    </div>
						  </slide>
						</carousel>
					</div>
				</div>
				-->
				<div class="row" style="padding-top: 10px;">
					<div class="col-md-8">
						<div class="panel panel-default">
							<div class="panel-heading">您搜索过的线路</div>
							<div class="panel-body">
								<ul class="list-group">
									<li class="list-group-item">北京-上海</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">新入驻品牌物流商</div>
							<div class="panel-body">
								<ul class="list-group">
									<li class="list-group-item">Cras justo odio</li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;padding-left: 15px;padding-right: 15px;">
					<div class="panel panel-default">
						<div class="panel-heading">活动展示</div>
						<div class="panel-body">
							活动展示信息区
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;">
					<div class="col-md-8">
						<div class="panel panel-default">
							<div class="panel-heading">热门路线</div>
							<div class="panel-body">
								<ul class="list-group">
									<li class="list-group-item">北京-上海</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">热门城市</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-2 col-md-3 col-lg-3 ">北京</div>
									<div class="col-sm-2 col-md-3 col-lg-3 ">北京</div>
									<div class="col-sm-2 col-md-3 col-lg-3 ">北京</div>
									<div class="col-sm-2 col-md-3 col-lg-3 ">北京</div>
									<div class="col-sm-2 col-md-3 col-lg-3 ">北京</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;padding-left: 15px;padding-right: 15px;">
					<div class="panel panel-default">
						<div class="panel-heading">友情链接</div>
						<div class="panel-body">
							友情链接信息区
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
