(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('addUController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','logFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,logFactory){
                            
        $scope.newU = {}
        $scope.addUData = function (obj) {
            dbFactory.postAPI('usuarios',obj).then(function (response) {
                alert("Nuevo usuario guardado")
                logFactory.set('usuarios',obj,'Admin')
            }) 
        }
    }])

})();