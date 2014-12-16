var RouteSearchApp = angular.module('RouteSearchApp', ['ui.bootstrap']);

RouteSearchApp.controller('RouteSearchCtrl', function($scope, $modal, $log){
	$scope.isCollapsed = true;
	
	$scope.cityFocus = function() {
		console.log(1)
		$scope.isCollapsed = false;
	}
	
	$scope.cityBlur = function() {
		console.log(2)
		$scope.isCollapsed = true;
	}
	
	$scope.toHome = function() {
		window.location.href = ctx + '/';
	}
	
});