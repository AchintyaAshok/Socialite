'use strict';


// Declare app level module which depends on filters, and services

var tradingPost = angular.module('SocialiteApp', [
	'ngRoute',
	'socialiteControllers'
]);

tradingPost.config(['$routeProvider', 
	function($routeProvider){
		$routeProvider.when("/home", {
			templateUrl: '../templates/homepage.html',
			controller: 'HomepageController'
		});
		$routeProvider.otherwise({
			templateUrl: '../templates/homepage.html',
			controller: 'HomepageController'
		});
	}
]);