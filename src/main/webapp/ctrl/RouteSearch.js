var RouteSearchApp = angular.module('RouteSearchApp', ['ui.bootstrap']);

RouteSearchApp.controller('RouteSearchCtrl', function($scope, $modal, $log){
	$scope.areaSelectVisable = false;
	$scope.areaLocationCSS = {width:'300px'};
	
	$scope.endArea = {
	    isopen: false
	  };
	$scope.searchObj = {area: '请选择城市'}
	
	$scope.selectArea = function(evObjec) {
		$scope.areaSelectVisable = true;
		$scope.areaLocationCSS =  {
			width:'300px', 
			left: (evObjec.ev.clientX - 370)  + 'px', 
			position:'relative',
			border: '1px;'
		};
	}
	
	$scope.cityBlur = function() {
		console.log(2)
		//$scope.areaSelectVisable = true;
	}
	
	$scope.selectAreaOK = function() {
		$scope.areaSelectVisable = false;
	}
	
	$scope.toHome = function() {
		window.location.href = ctx + '/';
	}
	
	$scope.toOrder = function() {
		window.location.href = ctx + '/route/toorder';
	}
	
});