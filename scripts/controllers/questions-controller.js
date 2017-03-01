(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('questionsController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,linkFactory){


    	dbFactory.getAPI('preguntas','').then(function (response) {
            $scope.questions = response.data
            if ($scope.questions) {
	    		$scope.quest = $scope.questions;
	    		for (var i = 0; i < $scope.questions.length; i++) {
	    			var aux = parseInt($scope.quest[i].respCorrecta);
	    			aux += 1;
	    			$scope.quest[i].respCorrecta = aux;
	    		}
	    		$scope.$apply;
    		}
        });
    	
        $scope.setQEdit = function (Q) {
        	 linkFactory.setQEdit(Q)
        	 $location.path('CuestionarioEdit');
        }
    }])

})();