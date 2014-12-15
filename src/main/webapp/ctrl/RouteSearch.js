var RouteSearchApp = angular.module('RouteSearchApp', ['ui.bootstrap']);

RouteSearchApp.controller('RouteSearchCtrl', function($scope, $modal, $log){
	$scope.cityFocus = function() {
		console.log(1)
	}
	
	$scope.cityBlur = function() {
		console.log(2)
	}
});