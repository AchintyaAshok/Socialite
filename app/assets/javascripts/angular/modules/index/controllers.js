'use strict';

/* Controllers */

var socControllers = angular.module('socialiteControllers', []);

socControllers.controller('HomepageController', ['$scope', '$http', '$routeParams',
	function($scope, $http, $routeParams){
		
		$scope.isAuthenticated = true;

		function _init(){
			// set up service call params
			$scope.method = 'GET';
			$scope.url = '/api/users/1/';	// url will change once Achintya completes authentication
			
			// call userProfileService
			$http({method: $scope.method, url: $scope.url})
		        .success(function(data) {
					$scope.isAuthenticated = true;					
					$scope.name = data[0].first_name;	          
		        })
        }

        _init();	
	}
]);
