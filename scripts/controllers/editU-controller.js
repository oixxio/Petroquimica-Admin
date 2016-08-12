(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editUController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory){
               
        $scope.uData = linkFactory.getU();
        $scope.userId = linkFactory.getU().id;        

        $scope.saveUData = function (obj) {
            var aux = obj
            var key = obj.id
            //delete obj.id
            //[START eliminacion de propiedades no existentes en la DB]
           delete aux.examen
           delete aux.examenRealizadoStr

           //[END eliminacion de propiedades no existentes en la DB]
            dbFactory.putAPI('usuarios',key,aux).then(function (response) {
                alert("Cambios guardados correctamente")
                logFactory.set('usuarios',aux,'Admin')
                $scope.getUsers()
                $location.path('/usuarios')
            }) 
        }
    }])

})();