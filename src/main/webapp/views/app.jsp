<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html ng-app="myApp">
	<head>
		<title>App</title>
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
    	<script src="${ctx}/ctrl/app.js?v=${version}"></script>
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
		                    <a role="button" class="navbar-brand active">360 flow</a>
		                    <li><a ng-click="openRouteSearch();">查询路线</a></li>
		                    <li><a href="#getting_started">我的物流</a></li>
		                    <li><a ng-click="openFillOrder();"">我要发货</a></li>
		                    <li><a href="#getting_started">查询网点</a></li>
		                    <li><a href="#getting_started">物流跟踪</a></li>
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
		<div class="header-placeholder"></div>
		<div role="main">
			<div class="container">
				<div class="row" style="padding-top: 60px;">
					<div class="col-md-5" ng-controller="SearchTabsCtrl">
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
					<div class="col-md-3">
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
					<div class="col-md-9">
						<div class="panel panel-default">
							<div class="panel-heading">您搜索过的线路</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-12 col-md-6 col-lg-6 ">
										<ul class="nav nav-pills nav-stacked" role="tablist">
											<li role="presentation"><a>深圳市&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;上海市&nbsp;<b>0.44</b>元/公斤&nbsp;120元/立方&nbsp;<span class="pull-right">新邦物流</span></a></li>
										</ul>
									</div>
									<div class="col-sm-12 col-md-6 col-lg-6 ">
										<ul class="nav nav-pills nav-stacked" role="tablist">
											<li role="presentation"><a>深圳市&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;上海市&nbsp;<b>0.44</b>元/公斤&nbsp;120元/立方&nbsp;<span class="pull-right">新邦物流</span></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-heading">新入驻品牌物流商</div>
							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked" role="tablist">
									<li role="presentation"><a>兴铁物流 珍惜所托，承载信任！</a></li>
									<li role="presentation"><a>兴铁物流 珍惜所托，承载信任！</a></li>
									<li role="presentation"><a>兴铁物流 珍惜所托，承载信任！</a></li>
									<li role="presentation"><a>兴铁物流 珍惜所托，承载信任！</a></li>
									<li role="presentation"><a>兴铁物流 珍惜所托，承载信任！</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;padding-left: 15px;padding-right: 15px;">
					<div class="panel panel-default">
						<div class="panel-heading">动态货源</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-12 col-md-6 col-lg-6 ">
									<ul class="nav nav-pills nav-stacked" role="tablist">
										<li role="presentation"><a>深圳市&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;上海市&nbsp;<b>0.44</b>元/公斤&nbsp;120元/立方&nbsp;<span class="pull-right">新邦物流</span></a></li>
									</ul>
								</div>
								<div class="col-sm-12 col-md-6 col-lg-6 ">
									<ul class="nav nav-pills nav-stacked" role="tablist">
										<li role="presentation"><a>深圳市&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;上海市&nbsp;<b>0.44</b>元/公斤&nbsp;120元/立方&nbsp;<span class="pull-right">新邦物流</span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;">
					<div class="col-md-9">
						<div class="panel panel-default">
							<div class="panel-heading">热门路线</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-12 col-md-6 col-lg-6 ">
										<ul class="nav nav-pills nav-stacked" role="tablist">
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
										</ul>
									</div>
									<div class="col-sm-12 col-md-6 col-lg-6 ">
										<ul class="nav nav-pills nav-stacked" role="tablist">
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
											<li role="presentation"><a>深圳市&nbsp;&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;上海市&nbsp;&nbsp;<b>0.44</b>元/公斤&nbsp;&nbsp;120元/立方</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
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
						<div class="panel-heading">活动展示</div>
						<div class="panel-body">
							活动展示信息区
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 10px;padding-left: 15px;padding-right: 15px;">
					<div class="panel panel-default">
						<div class="panel-heading">友情链接</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								<div class="col-sm-2 col-md-3 col-lg-3 ">国家交通运输物流公共信息平台 </div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			沪ICP备14044393号-1
		</div>
		
	</body>
</html>
