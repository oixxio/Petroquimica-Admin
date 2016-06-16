(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('questionsController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

        dbFactory.getAPI('preguntas','').success(function (response) {
            $scope.questions = response
        })
    }])

})();