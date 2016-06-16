(function () {
    'use strict';

    angular.module('app.dashboard').
    factory('dbFactory', ['$http', function($http){  
        var db = {} 

        db.getAPI = function (table,key) {
            return $http.get('api/api.php/'+table+'/'+key)
        }

    	return db;
    }]);

})();