(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('questionsController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,linkFactory){

    	dbFactory.getAPI('preguntas','').then(function (response) {
           $scope.questions = response.data
        })
        
        $scope.setQEdit = function (Q) {
        	 linkFactory.setQEdit(Q)
        	 $location.path('CuestionarioEdit');
        }
    }])

})();