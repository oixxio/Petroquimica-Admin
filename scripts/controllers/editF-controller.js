(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editUController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory){
                  
        $scope.fData = linkFactory.getF();    

        $scope.saveFData = function (obj) {
            var key = obj.id
            delete obj.id
            dbFactory.putAPI('signals',key,obj).then(function (response) {
                alert("Cambios guardados correctamente")
                logFactory.set('signals',obj,'Admin')
                $location.path('/fichas')
            }) 
        }
    }])

})();