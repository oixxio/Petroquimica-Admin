(function () {
    'use strict';
    angular.module('app.dashboard')
    .config(['$routeProvider',function($routeProvider) {
		$routeProvider.
	    when('/',{
			templateUrl: 'views/adminDashboard.html'
		}).
	    when('/usuarios',{
			templateUrl: 'views/adminUsuarios.html'
		}).
	    when('/cuestionarios',{
			templateUrl: 'views/adminCuestionarios.html'
		}).
	    when('/aplicaciones',{
			templateUrl: 'views/adminAplicaciones.html'
		}).
		when('/newApp',{
			templateUrl: 'views/newApp.html'
		});
	}]);
})(); 