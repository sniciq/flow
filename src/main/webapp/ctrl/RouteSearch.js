var RouteSearchApp = angular.module('RouteSearchApp', ['ui.bootstrap','util.eddy.AreaSelector']);

RouteSearchApp.controller('RouteSearchCtrl', function($scope, $modal, $log){
	$scope.areaFromDialogIsHidden = true;
	$scope.areaToDialogIsHidden = true;
	
	$scope.openRouteSearch = function() {
		window.location.href = ctx + '/route/search';
	}
	$scope.openFillOrder = function() {
		window.location.href = ctx + '/order/fillorder';
	}
	$scope.openMyflow = function() {
		window.location.href = ctx + '/myflow/myflow';
	}
	$scope.toHome = function() {
		window.location.href = ctx + '/';
	}
	
	$scope.toOrder = function() {
		window.location.href = ctx + '/route/toorder';
	}
	
});