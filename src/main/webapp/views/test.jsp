<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
	<head>
		<title>App</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap/3.3.0/css/bootstrap.min.css"/>
		
		<script src="${ctx}/resources/js/jquery/jquery-1.11.1.js"></script>
		<script src="${ctx}/resources/css/bootstrap/3.3.0/js/bootstrap.js"></script>
		
		<script type="text/javascript">
			$(function() {
				$('#myTab a').tab('show');
				
				$('#myTab a').click(function (e) {
				  e.preventDefault();
				  $(this).tab('show');
				})
			});
		</script>
	</head>
	
	<body>
		<div id="myTab">
			<ul class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">Home</a></li>
			  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">Profile</a></li>
			  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">Messages</a></li>
			  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
			</ul>
			
			<!-- Tab panes -->
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane active" id="home">.1..</div>
			  <div role="tabpanel" class="tab-pane" id="profile">..2.</div>
			  <div role="tabpanel" class="tab-pane" id="messages">..3.</div>
			  <div role="tabpanel" class="tab-pane" id="settings">..4.</div>
			</div>
		</div>
	</body>
</html>