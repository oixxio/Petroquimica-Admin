(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editUController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory){
        $scope.uData = linkFactory.getU();
        $scope.userId = linkFactory.getU().id;        

        $scope.saveUData = function (obj) {
            var key = obj.id
            delete obj.id
            delete obj.examen
            dbFactory.putAPI('usuarios',key,obj).then(function (response) {
                alert("Cambios guardados correctamente")
                logFactory.set('usuarios',obj,'Admin')
                $location.path('/usuarios')
            }) 
        }
    }])

})();