var myApp = angular.module('myApp', ['ui.bootstrap']);

myApp.controller('MainCtrl', function($scope, $modal, $log){
	
	$scope.sysname = '系统';
	$scope.items = ['item1', 'item2', 'item3'];
	
	$scope.openLogin = function() {
		var modalInstance = $modal.open({
			templateUrl: 'views/login.tpl.html?v=' + sysVersion,
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
	};
	
	$scope.regist = function() {
		var modalInstance = $modal.open({
			templateUrl: 'views/regist.tpl.html?v=' + sysVersion,
			controller: 'SelectRegistCtrl',
			backdrop: 'static',
			size: 'sm',
			resolve: {
				items: function() {
					return $scope.items;
				}
			}
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
myApp.controller('SelectRegistCtrl', function($scope, $modalInstance, items){
	$scope.items = items;
	$scope.selected = {
			item: $scope.items[0]
	};
	$scope.registCompany = function() {
		window.open('views/regist_company.html?v=' + sysVersion);
		$modalInstance.dismiss('cancel');
	};
	$scope.registPerson = function() {
		window.open('views/regist_person.html?v=' + sysVersion);
		$modalInstance.dismiss('cancel');
	};
	$scope.cancel = function() {
		$modalInstance.dismiss('cancel');
	}
});

myApp.controller('CarouselCtrl', function($scope){
	$scope.myInterval = 5000;
	var slides = $scope.slides = [];
	
	$scope.addSlide = function() {
		var newWidth = 300 + slides.length;
	    slides.push({
	      image: 'resources/images/' + newWidth + '.jpeg',
	      text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' + ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
	    });
	};

	for (var i=0; i<4; i++) {
	    $scope.addSlide();
	}
});

myApp.controller('CarouselBrandCtrl', function($scope){
//	$scope.myInterval = 5000;
//	var slides = $scope.slides = [];
//	
//	$scope.addSlide = function() {
//	    var newWidth = 300 + slides.length;
//	    slides.push({
//	      image: 'resources/images/' + newWidth + '.jpeg',
//	      text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' + ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
//	    });
//	};
//
//	for (var i=0; i<4; i++) {
//	    $scope.addSlide();
//	}
})


myApp.controller('SearchTabsCtrl', function($scope){
	$scope.tabs = [
       { title:'Dynamic Title 1', content:'Dynamic content 1' },
       { title:'Dynamic Title 2', content:'Dynamic content 2', disabled: true }
     ];

     $scope.alertMe = function() {
       setTimeout(function() {
         $window.alert('You\'ve selected the alert tab!');
       });
     };
});

myApp.controller('TestCtrl', function($scope){
	$scope.name = 'Hello world';
	
});

