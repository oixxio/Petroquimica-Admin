(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editQController', ['$scope','$location','loginFactory','$http','$route','dbFactory','linkFactory',
    			function($scope,$location,loginFactory,$http,$route,dbFactory,linkFactory){
        $scope.qData = linkFactory.getQ();
        $scope.questionId = linkFactory.getQ().id;        

        $scope.saveData = function (obj) {
            var key = obj.id
            delete obj.id
            dbFactory.putAPI('preguntas',key,obj).then(function (response) {
                alert("Cambios guardados correctamente")
                $route.reload()
            }) 
        }
    }])

})();