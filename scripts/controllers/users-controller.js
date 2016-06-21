(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('usersController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){
    	/*[Start refresh users list]*/
    	dbFactory.getAPI('usuarios','').then(function (response) {
            var users = response.data
            var usersTrained = 0
            $scope.usersQty = users.length

            for (var i = 0; i < users.length; i++) {
                usersTrained += parseInt(response.data[i].moduloA)
                if (users[i].moduloA == '1') {
                    users[i].examen = 'Si'
                }else{
                    users[i].examen = 'No'
                }
            }
            $scope.usersTrained = usersTrained
            $scope.users = users
        }), function (error) {
             alert(error)
        }
        /*[End refresh users list]*/
    	 $scope.setUEdit = function (U) {
        	 linkFactory.setUEdit(U)
        	 $location.path('usuarioEdit');
        }
    }])

})();