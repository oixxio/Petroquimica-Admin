(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editQController', ['$scope','$location','logFactory','$http','$route','dbFactory','linkFactory',
    			function($scope,$location,logFactory,$http,$route,dbFactory,linkFactory){
                   
        $scope.qData = linkFactory.getQ();
        $scope.questionId = linkFactory.getQ().id;
      

        $scope.saveData = function (obj) { 
            var key = obj.id
            delete obj.id
            console.log(obj,$scope.qData);
            dbFactory.putAPI('preguntas',key,obj).then(function (response) {
                linkFactory.updateJsonQ(obj.idModulo).then(function (response) {
                    //console.log(response)
                     alert("Cambios guardados correctamente")
                    logFactory.set('cuestionarios',obj,'Admin')
                    $location.path('/cuestionarios')
                });                
            })  
        }
    }])

})();