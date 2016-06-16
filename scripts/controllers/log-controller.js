(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('logController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

        dbFactory.getAPI('changeLog','').success(function (response) {
            $scope.changes = response
        })
    }])

})();