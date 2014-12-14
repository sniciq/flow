var registApp = angular.module('registApp', ['ui.bootstrap']);

registApp.controller('RegistCompanyCtrl', function($scope, $modal, $log){
	$scope.type = '1';
});

registApp.controller('RegistPersonCtrl', function($scope, $modal, $log){
	$scope.type = '2';
});