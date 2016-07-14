(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('fichasController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){
                 
    	
        /*[End refresh users list]*/
    	 $scope.setFEdit = function (F) {
        	 linkFactory.setFEdit(F)
        	 $location.path('fichaEdit');
        }
    }])

})();