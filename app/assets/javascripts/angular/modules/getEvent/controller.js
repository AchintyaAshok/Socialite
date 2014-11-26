'use strict';

/* Controllers */

var getEventController = angular.module('getEventControllers', []);

getEventController.controller('getEventController', ['$scope', '$http', '$routeParams',
	function($scope, $http, $routeParams){
		
		// set up default variables
	
		$scope.isAuthenticated = false;		

		$scope.eventData = {};

		$scope.startDate = null;
		$scope.startWeekDate = null;
		$scope.startTime = null;
		
		$scope.endDate = null;
		$scope.endWeekDate = null;
		$scope.endTime = null;

		// function _formatTime()
		// formats time into 12-hr AM/PM
		function _formatTime(date){
			var formattedTime = "";
			if(date.getHours() > 12){
				if(date.getHours() == 0){
					formattedTime = "12";
				}
				else{
					formattedTime = date.getHours()-12;
				}

				if(date.getMinutes() < 10){
					 formattedTime = formattedTime + ":" + date.getMinutes() + "0 PM";
				}
				else{
					formattedTime = formattedTime + ":" + date.getMinutes() + " PM";	
				}
			}
			else{
				formattedTime = date.getHours();

				if(date.getMinutes() < 10){
					 formattedTime = formattedTime + ":" + date.getMinutes() + "0 AM";
				}
				else{
					formattedTime = formattedTime + ":" + date.getMinutes() + " AM";	
				}
			}

			return formattedTime;
		}

		// function _init()
		// called when the page is loaded

		function _init(){
			// TODO: SET UP AUTHENTICATION
			$scope.isAuthenticated = true;

			// set up service call for event params
			var getEventMethod = 'GET';

			var fullUrl = location.href;
			var fullUrlArr = fullUrl.split('/');
			var eventId = fullUrlArr[4];

			var getEventUrl = '/api/events/' + eventId;
			
			// call events api
			$http({method: getEventMethod, url: getEventUrl})
		        .success(function(data) {
					$scope.isAuthenticated = true;
					$scope.eventData = data[0];

					// set up start time
					var startdateMonthDayYear = data[0].starts.slice(0,data[0].starts.indexOf('T'));
					var startdateTime = data[0].starts.slice(data[0].starts.indexOf('T')+1,data[0].starts.indexOf('.'));
					var startdate = new Date(startdateMonthDayYear + " " + startdateTime);
										
					var days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];					
					$scope.startWeekDate = days[startdate.getDay()];					
					$scope.startDate = Number(startdate.getMonth()+1) + "/" + startdate.getDate();
					
					$scope.startTime = _formatTime(startdate);

					// set up end date
					var enddateMonthDayYear = data[0].ends.slice(0,data[0].ends.indexOf('T'));
					var enddateTime = data[0].ends.slice(data[0].ends.indexOf('T')+1,data[0].ends.indexOf('.'));
					var enddate = new Date(enddateMonthDayYear + " " + enddateTime);
					$scope.endWeekDate = days[enddate.getDay()];					
					$scope.endDate = Number(enddate.getMonth()+1) + "/" + enddate.getDate();									

					$scope.endTime = _formatTime(enddate);


					// set up service call for venue params
					/*
					var getVenueMethod = 'GET';
					var getVenueUrl = 'api/venue/' + $scope.data[0].venue_id;

					$http({method: getVenueMethod, url: getVenueUrl})
		        		.success(function(data) {
		        			$scope.venueData = data[0];
        				})
    				*/

    				// TO DO: SET UP VENUE & NUM_ATTENDING
    				$scope.venueData = {
    					venue_id: '1',
    					name: 'The Fat Black Pussycat',
    					street: '130 W 3rd St',
    					city: 'New York',
    					state: 'NY',
    					zip: '10012',
    					phone: '(212) 533-4790'
    				}

    				$scope.eventData.num_attending = '80';

		        })
        }

        _init(); // page loaded, call this function	
	}
]);
