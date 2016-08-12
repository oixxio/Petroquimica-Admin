(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editFController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory){
                  
        $scope.fData = linkFactory.getF();    

        $scope.saveFData = function (obj) {
            var key = obj.id
            //delete obj.id
            dbFactory.putAPI('signals',key,obj).then(function (response) {
                linkFactory.updateJsonS().then(function () {
                    alert("Cambios guardados correctamente")
                    logFactory.set('signals',obj,'Admin')
                    //Start fichas load
                    dbFactory.getAPI('signals','').then(function (response) {
                        $scope.signals = response.data
                        $location.path('/fichas')
                    })
                    //End fichas load                    
                });
            }) 
        }
    }])

})();