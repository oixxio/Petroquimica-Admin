(function () {
    'use strict';

    //START printController
    angular.module('app.dashboard').
    controller('printController', ['$scope','$location','linkFactory','$http','$resource','dbFactory',
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){


        //Inicializaciond de timestamp
        $scope.todayTimeStamp = new Date;
        $scope.todayTimeStamp.setUTCHours(0,0,0,0);

        //START listEmpresas()
        $scope.listEmpresas = function () {
          $scope.todayTimeStamp.setUTCHours(0,0,0,0);
            $scope.fechaHoy = $scope.todayTimeStamp.getTime();
        	$scope.empresas = [];
            $scope.empresasUsers = [];
            var aux2 = new Date($scope.fechaHoy);
            var aux21 = aux2.toString("MMM dd yyyy").split(" ", 4);

            // Recorre array 'users', si la empresa del user actual no se encuentra en la lista de empresas, la agrega a array empresas
            for (var j = 0; j < $scope.users.length; j++) {
                $scope.fechaExamenINT = parseInt($scope.users[j].fechaExamen)*1000;
                var aux1 = new Date($scope.fechaExamenINT);
                var aux11 = aux1.toString("MMM dd yyyy").split(" ", 4);

                if(aux11.join(" ") == aux21.join(" ")){
                    if($scope.users[j].examenes[1] > 0){
                      if($scope.empresas.indexOf($scope.users[j].empresa) == -1){
                        $scope.empresas.push($scope.users[j].empresa);
                        $scope.empresasUsers.push($scope.users[j]);
                      }
                    }
                }
            }

            if ($scope.empresas.length == 0) {
                $scope.empresaSelected = "NINGUNA";
            } else {
                $scope.empresaSelected = $scope.empresas[0];
            }
            console.log($scope.empresaSelected);
        }//END listEmpresas()


    }])
    //END printController
})();
 

// Examenes para newes
// -------------------------
//  (function(x){ 
//     (function(y){
//         console.log(x);
//         console.log(y);
//     })(2);
// })(1);
// -------------------------
//  (function(x){ 
//      console.log(1);   
//      setTimeout(function(){ console.log(2); }, 1000);   
//      setTimeout(function(){ console.log(3); }, 1);   
//      console.log(4);   
//  })();