var myApp = angular.module('myApp', ['ui.bootstrap']);

myApp.controller('MainCtrl', function($scope, $modal, $log){
	
	$scope.sysname = '系统';
	$scope.items = ['item1', 'item2', 'item3'];
	
	$scope.openLogin = function() {
		var modalInstance = $modal.open({
			templateUrl: ctx + '/views/login.tpl.html',
			controller: 'LoginCtrl',
			backdrop: 'static',
			size: 'sm',
			resolve: {
				items: function() {
					return $scope.items;
				}
			}
		});
		
		modalInstance.result.then(function(selectedItem){
			$scope.selected = selectedItem;
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	}
});
myApp.controller('LoginCtrl', function($scope, $modalInstance, items){
	$scope.items = items;
	$scope.selected = {
			item: $scope.items[0]
	};
	$scope.login = function() {
		$modalInstance.close($scope.selected.item);
	};
	
	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	}
});


myApp.controller('SearchCtrl', function($scope){
	
});


myApp.controller('TestCtrl', function($scope){
	$scope.name = 'Hello world';
	
});