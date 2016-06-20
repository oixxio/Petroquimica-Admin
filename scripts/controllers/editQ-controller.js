(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editQController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$resource,dbFactory,linkFactory){
        $scope.qData = linkFactory.getQ();
        
        dbFactory.getAPI('respuestas',$scope.qData.id).success(function (response) {
             $scope.qData.respuesta1 = response.respuesta1
             $scope.qData.respuesta2 = response.respuesta2
             $scope.qData.respuesta3 = response.respuesta3
             $scope.qData.respCorrecta = response.respCorrecta
             $scope.qData.modulo = response.modulo
        })

        $scope.saveData = function (obj) {
            alert(JSON.stringify(obj))
            dbFactory.putAPI('respuestas',$scope.qData.id,obj).success(function () {
                alert('Cambios guardados') 
            }) 
        }
    }])

})();