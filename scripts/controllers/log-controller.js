(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('logController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){
  				

        dbFactory.getAPI('changelog','').then(function (response) {
            $scope.changes = response.data
        })
    }])

})();