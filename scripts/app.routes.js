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
	    when('/usuarioEdit',{
			templateUrl: 'views/adminUsuarioEdit.html'
		}).		
	    when('/cuestionarios',{
			templateUrl: 'views/adminCuestionarios.html'
		}).
	    when('/CuestionarioEdit',{ 
			templateUrl: 'views/adminCuestionarioEdit.html'
		}).		
	    when('/CuestionarioAdd',{
			templateUrl: 'views/adminCuestionarioAdd.html'
		}).						
	    when('/aplicaciones',{
			templateUrl: 'views/adminAplicaciones.html'
		}).
		when('/cambios',{
			templateUrl: 'views/adminRegistroCambios.html'
		});
		when('/login',{
			templateUrl: 'views/adminLogin.html'
		});
	}]);
})(); 

