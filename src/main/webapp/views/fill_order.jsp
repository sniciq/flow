<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html ng-app="OrderApp">
	<head>
		<title>在线下单</title>
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
    	<script src="${ctx}/ctrl/OrderApp.js?v=${sysVersion}"></script>
	</head>
	<body ng-controller="fillOrderCtrl">
		<header class="navbar navbar-inverse navbar-fixed-top">
		    <div class="navbar-inner">
		        <div class="container">
		        	<nav class="hidden-xs">
		                <ul class="nav navbar-nav">
		                    <li class="active" ><a ng-click="openRouteSearch();">1.填写运单</a></li>
		                    <li><a ng-click="">2.选择线路</a></li>
		                    <li><a ng-click="">3.运单提交成功</a></li>
		                    <li><a ng-click="">4.物流公司受理</a></li>
		                    <li><a ng-click="">5.评价</a></li>
		                </ul>
		            </nav>
		        </div>
		    </div>
		</header>
		<div role="main" style="padding-top: 60px;">
			<div class="container">
				<form class="form-horizontal" role="form">
					<div class="panel panel-default">
						<div class="panel-heading">
						    <h3 class="panel-title">发货方，填写完整、准确信息，物流跟进更及时</h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 联系人：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
								<div class="col-sm-2">
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> 保存到通讯录
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 公司：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 所在区县：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 街道地址：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
								<div class="col-sm-2">
									<p class="form-control-static text-left">不需要重复填写省/市/区</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 联系电话：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
						    <h3 class="panel-title">收货方, 为了您货物安全，请填写完整、准确信息</h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 联系人：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
								<div class="col-sm-2">
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> 保存到通讯录
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 公司：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 所在区县：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 街道地址：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
								<div class="col-sm-2">
									<p class="form-control-static text-left">不需要重复填写省/市/区</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 联系电话：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
						    <h3 class="panel-title">货物信息</h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 货物名称：</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="inputEmail" placeholder="">
								</div>
								<div class="col-sm-2">
									<button type="button" class="btn btn-link">禁运品说明</button>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label"><span style="color: red;">*</span> 包装总件数：	</label>
								<div class="col-sm-2">
									<div class="input-group">
								      <input class="form-control" type="email" placeholder="">
								      <div class="input-group-addon">件</div>
								    </div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label">总重量：	</label>
								<div class="col-sm-2">
									<div class="input-group">
								      <input class="form-control" type="email" placeholder="">
								      <div class="input-group-addon">公斤</div>
								    </div>
								</div>
								<div class="col-sm-1">
									<p class="form-control-static text-center"> 或</p>
								</div>
								<label for="inputEmail" class="col-sm-1 control-label">总体积：	</label>
								<div class="col-sm-2">
									<div class="input-group">
								      <input class="form-control" type="email" placeholder="">
								      <div class="input-group-addon">立方米</div>
								    </div>
								</div>
								<div class="col-sm-2">
									<p class="form-control-static text-left">用于估算运费</p>
								</div>
  							</div>
  							<div class="form-group">
  								<label for="inputEmail" class="col-sm-2 control-label">注意事项：</label>
  								<div class="col-sm-6">
  									<textarea class="form-control" rows="3"></textarea>
  								</div>
  								
  							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
						    <h3 class="panel-title">支付方式</h3>
						</div>
						<div class="panel-body">
							<div class=" col-sm-offset-1 col-sm-8">
								<label class="radio-inline">
								  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 发货人支付（现付）
								</label>
								<label class="radio-inline">
								  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 收货人支付（到付）
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 col-sm-offset-4">
							<button type="button" class="btn btn-primary" ng-click="selectRoute();">下一步</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>