(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('addQController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','logFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,logFactory){
        
        checkLoggedIn();

        $scope.newQ = {}
        $scope.newData = function (obj) {
            dbFactory.postAPI('preguntas',obj).then(function (response) {
                linkFactory.updateJsonQ().then(function () {
                    alert("Nueva pregunta guardada")
                    logFactory.set('preguntas',obj,'Admin')
                });  
                alert("Nueva pregunta guardada")
                logFactory.set('preguntas',obj,'Admin')
            }) 
        }

    }])

})();