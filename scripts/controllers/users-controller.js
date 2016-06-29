(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('usersController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){
    	
        /*[End refresh users list]*/
    	 $scope.setUEdit = function (U) {
        	 linkFactory.setUEdit(U)
        	 $location.path('usuarioEdit');
        }
    }])

})();