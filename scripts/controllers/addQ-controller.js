(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('addQController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,linkFactory){
        $scope.newQ = {}
        $scope.newData = function (obj) {
            dbFactory.postAPI('preguntas',obj).then(function (response) {
                alert("Nueva pregunta guardada")
            }) 
        }
    }])

})();