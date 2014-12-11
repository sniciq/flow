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

myApp.controller('CarouselCtrl', function($scope){
	$scope.myInterval = 5000;
	var slides = $scope.slides = [];
	
	$scope.addSlide = function() {
	    var newWidth = 600 + slides.length + 1;
	    slides.push({
	      image: 'http://placekitten.com/' + newWidth + '/300',
	      text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' + ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
	    });
	};

	for (var i=0; i<4; i++) {
	    $scope.addSlide();
	}
});

myApp.controller('CarouselBrandCtrl', function($scope){
	$scope.myInterval = 5000;
	var slides = $scope.slides = [];
	
	$scope.addSlide = function() {
	    var newWidth = 600 + slides.length + 1;
	    slides.push({
	      image: 'http://placekitten.com/' + newWidth + '/100',
	      text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' + ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
	    });
	};

	for (var i=0; i<4; i++) {
	    $scope.addSlide();
	}
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