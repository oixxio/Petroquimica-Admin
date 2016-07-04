(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('loginController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

		//Inicializacion de logeo
        $scope.logged = false;


    }])

})();