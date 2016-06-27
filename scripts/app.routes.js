(function () {
    'use strict';
    angular.module('app.dashboard')
    .config(['$routeProvider',function($routeProvider) {
		$routeProvider.
	    when('/',{
			templateUrl: 'views/adminLogin.html'
		}).
		when('/dashboard',{
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
	    when('/aplicaciones',{
			templateUrl: 'views/adminAplicaciones.html'
		}).
	    when('/impresion',{
			templateUrl: 'views/adminImpresion.html'
		}).		
		when('/cambios',{
			templateUrl: 'views/adminRegistroCambios.html'
		});
	}]);
})(); 

