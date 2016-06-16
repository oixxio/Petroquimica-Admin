(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('logController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

        dbFactory.getAPI('usuarios','').success(function (response) {
            $scope.users = response
        })
    }])

})();