(function () {
    'use strict';

    //START printController
    angular.module('app.dashboard').
    controller('printController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){
                 

        //Inicializaciond de timestamp
        $scope.todayTimeStamp = new Date;
        $scope.todayTimeStamp.setHours(0,0,0,0);
            
            
        //START listEmpresas()
        $scope.listEmpresas = function () {
            $scope.fechaHoy = $scope.todayTimeStamp.getTime() / 1000;
        	$scope.empresas = [];

            // Recorre array 'users', si la empresa del user actual no se encuentra en la lista de empresas, la agrega a array empresas            
            for (var j = 0; j < 4; j++) {//$scope.users.length; j++) {            
                $scope.fechaExamenINT = parseInt($scope.users[j].fechaExamen);
                if($scope.fechaExamenINT == $scope.fechaHoy){
                    if($scope.users[j].examen == 'Si'){
                        if($scope.empresas.indexOf($scope.users[j].empresa) == -1){ 
                          $scope.empresas.push($scope.users[j].empresa);
                        }
                    }
                }
            }
            if ($scope.empresas.length == 0) {
                $scope.empresaSelected = "NINGUNA"
            } else {
                $scope.empresaSelected = $scope.empresas[0];
            }
        }//END listEmpresas()



    }])
    //END printController
})();