var OrderApp = angular.module('OrderApp', ['ui.bootstrap']);

OrderApp.controller('SubmitOrderCtrl', function($scope, $modalInstance, items){
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

OrderApp.controller('fillOrderCtrl', function($scope, $modal, $log){
	$scope.selectRoute = function() {
		window.location.href= ctx + "/route/select";
	}
	
	$scope.items = ['item1', 'item2', 'item3'];
	$scope.showSubmitOrderWin = function() {
		var submitOrderWin = $modal.open({
			templateUrl: ctx + '/views/fill_order_commit.tpl.html?v=' + sysVersion,
			controller: 'SubmitOrderCtrl',
			backdrop: 'static',
			size: 'lg',
			resolve: {
				items: function() {
					return $scope.items;
				}
			}
		});
		
		submitOrderWin.result.then(function(selectedItem){
			$scope.selected = selectedItem;
		}, function() {
			$log.info('Modal dismissed at: ' + new Date());
		});
	}
});

