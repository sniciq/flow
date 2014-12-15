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
		                    <a role="button" class="navbar-brand" ng-click="toHome();">360 flow</a>
		                    <li class="active"><a href="#getting_started">查询路线</a></li>
		                    <li><a href="#getting_started">我的物流</a></li>
		                    <li><a href="#getting_started">我要发货</a></li>
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
				
				<tabset>
				    <tab heading="货运（大件更优惠）">
				    	<div class="container">
				    		<div class="row">
				    			<form class="form-horizontal" role="form">
				    				<div>
										<label for="inputEmail" class="col-sm-1 col-sm-offset-1 control-label">品牌</label>
										<div class="col-sm-10">
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"> 安能物流 (120)
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox2" value="option2"> 安能物流 (120)
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"> 安能物流 (120)
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox2" value="option2"> 安能物流 (120)
											</label>
										</div>
									</div>
									<div>
										<label for="inputEmail" class="col-sm-1 col-sm-offset-1 control-label">组货方式</label>
										<div class="col-sm-10">
											<label class="radio-inline">
											  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 不限
											</label>
											<label class="radio-inline">
											  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 小票零担
											</label>
											<label class="radio-inline">
											  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 专线零担
											</label>
										</div>
									</div>
									<div>
										<label for="inputEmail" class="col-sm-1 col-sm-offset-1 control-label">增值服务</label>
										<div class="col-sm-10">
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"> 代收货款
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox2" value="option2"> 包上门接货
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"> 包送货上门
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox2" value="option2"> 促销
											</label>
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox2" value="option2"> 空运
											</label>
										</div>
									</div>
									<div>
										<label for="inputEmail" class="col-sm-1 col-sm-offset-1 control-label">保障服务</label>
										<div class="col-sm-10">
											<label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"> 服务规范
											</label>
										</div>
									</div>
									<div>
										<div class="col-sm-2 col-sm-offset-2">
											<button type="button" class="btn btn-danger">确定</button>
										</div>
									</div>
				    			</form>
				    		</div>
				    		
				    		<div class="row">
				    			<div class="col-sm-2">
				    				 <div class="btn-group" dropdown is-open="status.isopen">
									      <button type="button" class="btn btn-default dropdown-toggle" dropdown-toggle ng-disabled="disabled">
									       默认排序 <span class="caret"></span>
									      </button>
									      <ul class="dropdown-menu" role="menu">
									        <li><a href="#">重货从高到低</a></li>
									        <li><a href="#">重货从低到高</a></li>
									        <li class="divider"></li>
									        <li><a href="#">轻货从高到低</a></li>
									        <li><a href="#">轻货从低到高</a></li>
									      </ul>
								    </div>
				    			</div>
				    		</div>
				    		
				    		<div class="row" style="padding-top: 5px;">
					    		<div class="list-group">
									<div href="#" class="list-group-item">
										<div class="container row">
											<div class="col-sm-2">上海龙开物流有限公司 (一部)</div>
											<div class="col-sm-3">从：<b>上海市</b> (<button type="button" class="btn btn-link">查看网点</button>) <br>到：<b>深圳市</b> (<button type="button" class="btn btn-link">查看网点</button>)</div>
											<div class="col-sm-2 text-right"><b style="font-size: 18px;color: #F00">2天</b><br>零担汽运专线</div>
											<div class="col-sm-2 text-left">重货：<b style="font-size: 18px;color: #F00">0.3 </b>元/公斤<br>轻货：100 元/立方<br>最低一票：40元</div>
											<div class="col-sm-2" style="padding-top: 10px;">最近成交6笔 <br>6条评价</div>
											<div class="col-sm-1" style="padding-top: 15px;"><button type="button" class="btn btn-primary">发 货</button></div>
										</div>
									</div>
								</div>
								<div class="list-group">
									<div href="#" class="list-group-item">
										<div class="container row">
											<div class="col-sm-2">上海龙开物流有限公司 (一部)</div>
											<div class="col-sm-3">从：<b>上海市</b> (<button type="button" class="btn btn-link">查看网点</button>) <br>到：<b>深圳市</b> (<button type="button" class="btn btn-link">查看网点</button>)</div>
											<div class="col-sm-2 text-right"><b style="font-size: 18px;color: #F00">2天</b><br>零担汽运专线</div>
											<div class="col-sm-2 text-left">重货：<b style="font-size: 18px;color: #F00">0.3 </b>元/公斤<br>轻货：100 元/立方<br>最低一票：40元</div>
											<div class="col-sm-2" style="padding-top: 10px;">最近成交6笔 <br>6条评价</div>
											<div class="col-sm-1" style="padding-top: 15px;"><button type="button" class="btn btn-primary">发 货</button></div>
										</div>
									</div>
								</div>
								<div class="list-group">
									<div href="#" class="list-group-item">
										<div class="container row">
											<div class="col-sm-2">上海龙开物流有限公司 (一部)</div>
											<div class="col-sm-3">从：<b>上海市</b> (<button type="button" class="btn btn-link">查看网点</button>) <br>到：<b>深圳市</b> (<button type="button" class="btn btn-link">查看网点</button>)</div>
											<div class="col-sm-2 text-right"><b style="font-size: 18px;color: #F00">2天</b><br>零担汽运专线</div>
											<div class="col-sm-2 text-left">重货：<b style="font-size: 18px;color: #F00">0.3 </b>元/公斤<br>轻货：100 元/立方<br>最低一票：40元</div>
											<div class="col-sm-2" style="padding-top: 10px;">最近成交6笔 <br>6条评价</div>
											<div class="col-sm-1" style="padding-top: 15px;"><button type="button" class="btn btn-primary">发 货</button></div>
										</div>
									</div>
								</div>
								<div class="list-group">
									<div href="#" class="list-group-item">
										<div class="container row">
											<div class="col-sm-2">上海龙开物流有限公司 (一部)</div>
											<div class="col-sm-3">从：<b>上海市</b> (<button type="button" class="btn btn-link">查看网点</button>) <br>到：<b>深圳市</b> (<button type="button" class="btn btn-link">查看网点</button>)</div>
											<div class="col-sm-2 text-right"><b style="font-size: 18px;color: #F00">2天</b><br>零担汽运专线</div>
											<div class="col-sm-2 text-left">重货：<b style="font-size: 18px;color: #F00">0.3 </b>元/公斤<br>轻货：100 元/立方<br>最低一票：40元</div>
											<div class="col-sm-2" style="padding-top: 10px;">最近成交6笔 <br>6条评价</div>
											<div class="col-sm-1" style="padding-top: 15px;"><button type="button" class="btn btn-primary">发 货</button></div>
										</div>
									</div>
								</div>
								<div class="list-group">
									<div href="#" class="list-group-item">
										<div class="container row">
											<div class="col-sm-2">上海龙开物流有限公司 (一部)</div>
											<div class="col-sm-3">从：<b>上海市</b> (<button type="button" class="btn btn-link">查看网点</button>) <br>到：<b>深圳市</b> (<button type="button" class="btn btn-link">查看网点</button>)</div>
											<div class="col-sm-2 text-right"><b style="font-size: 18px;color: #F00">2天</b><br>零担汽运专线</div>
											<div class="col-sm-2 text-left">重货：<b style="font-size: 18px;color: #F00">0.3 </b>元/公斤<br>轻货：100 元/立方<br>最低一票：40元</div>
											<div class="col-sm-2" style="padding-top: 10px;">最近成交6笔 <br>6条评价</div>
											<div class="col-sm-1" style="padding-top: 15px;"><button type="button" class="btn btn-primary">发 货</button></div>
										</div>
									</div>
								</div>
				    		</div>
						</div>
						<pagination boundary-links="true" total-items="totalItems" ng-model="currentPage" class="pagination-sm" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"></pagination>
				    </tab>
				    <tab heading="快递（小件更便捷）">Short Labeled Justified content</tab>
				</tabset>
			</div>
		</div>
		
	</body>
</html>