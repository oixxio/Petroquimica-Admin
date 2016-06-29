(function () {
    'use strict';
    //START printController
    angular.module('app.dashboard').
    controller('printController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){

        //START listEmpresas()
        $scope.listEmpresas = function () {
        	var $scope.empresas = [];
            // Recorre array 'users', si la empresa del user actual no se encuentra en la lista de empresas, la agrega a array empresas            
            for (var j = 0; j < $scope.users.length; j++) {
                if ($scope.users.examen == 'Si') {
                    if($scope.empresas.indexOf($scope.users[j].empresa) == -1){ 
                      $scope.empresas.push($scope.users[j].empresa);
                    }
                }
            }
            alert('DONE');
            alert(JSON.stringify($scope.empresas));
            }
        }//END listEmpresas()
    }])
    //END printController
})();