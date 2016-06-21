(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('questionsController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,linkFactory){

        
        $scope.setQEdit = function (Q) {
        	 linkFactory.setQEdit(Q)
        	 $location.path('CuestionarioEdit');
        }
    }])

})();