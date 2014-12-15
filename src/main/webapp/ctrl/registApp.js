var registApp = angular.module('registApp', ['ui.bootstrap']);

registApp.controller('RegistCompanyCtrl', function($scope, $modal, $log){
	$scope.type = '1';
	$scope.verifyCodeUrl = '../verification/img?v' + new Date().getTime();
	
	$scope.refreshVerificationCode = function() {
		$scope.verifyCodeUrl = '../verification/img?v' + new Date().getTime();
	}
});

registApp.controller('RegistPersonCtrl', function($scope, $modal, $log){
	$scope.type = '2';
});