/**
 * 
 */

var app = angular.module('myApp', ['ngRoute']);
app.controller('myCtrl', ['$scope', function($scope){
	$scope.result = 0;
	$scope.surplus = 0;
	$scope.site_quantity = $scope.site;
	$scope.result = $scope.guest;
	$scope.myFunc = function(surplus){
		var guest = $scope.guest;
		$scope.result = guest;
	}
	$scope.siteChange = function(){
		var site = $scope.site;
		$scope.site_quantity = site;
	}
}]);
	