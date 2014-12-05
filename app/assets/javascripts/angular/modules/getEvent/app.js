'use strict';


// Declare app level module which depends on filters, and services

var eventModule = angular.module('getEvent', [
	'ngRoute',
	'getEventControllers'
]);

eventModule.config(['$routeProvider', 
	function($routeProvider){
		$routeProvider.when("/events", {
			templateUrl: '../templates/event.html',
			controller: 'getEventController'
		});
		$routeProvider.otherwise({
			templateUrl: '../templates/event.html',
			controller: 'getEventController'
		});
	}
]);

