'use strict';

/* Controllers */

var getEventController = angular.module('getEventControllers', []);

getEventController.controller('getEventController', ['$scope', '$http', '$routeParams',
	function($scope, $http, $routeParams){
		console.log("Instantiated the getEventController");
	}
]);
