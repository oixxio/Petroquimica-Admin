(function () {
    'use strict';

    angular.module('app.dashboard').
    factory('dbFactory', ['$http', function($http){  
        var db = {} 

        db.getAPI = function (table,key) {
            return $http.get('api/api.php/'+table+'/'+key)
        }
        db.putAPI = function (table,key,data) {
        	return $http.put('api/api.php/'+table+'/'+key,data)
        }
    	return db;
    }]);

})();