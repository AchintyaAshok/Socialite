'use strict';


// Declare app level module which depends on filters, and services

var tradingPost = angular.module('SocialiteApp', [
	'ngRoute',
	'socialiteControllers'
]);

tradingPost.config(['$routeProvider', 
	function($routeProvider){
		$routeProvider.when("/home", {
			templateUrl: '../templates/index.html',
			controller: 'HomepageController'
		});
		$routeProvider.otherwise({
			templateUrl: '../templates/index.html',
			controller: 'HomepageController'
		});
	}
]);