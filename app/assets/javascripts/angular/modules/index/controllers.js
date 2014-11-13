'use strict';

/* Controllers */

var socControllers = angular.module('socialiteControllers', []);

socControllers.controller('HomepageController', ['$scope', '$http', '$routeParams',
	function($scope, $http, $routeParams){
		console.log("Instantiated the home controller!");
	}
]);
