'use strict';


// Declare app level module which depends on filters, and services

var eventModule = angular.module('getEvent', [
	'ngRoute',
	'getEventControllers'
]);

eventModule.config(['$routeProvider', 
	function($routeProvider){
		$routeProvider.when("/", {
			templateUrl: '../templates/homepage.html',
			controller: 'HomepageController'
		});
		$routeProvider.otherwise({
			templateUrl: '../templates/homepage.html',
			controller: 'HomepageController'
		});
	}
]);

