(function () {
    'use strict';
    angular.module('app.dashboard').
    factory('logFactory', ['$http','dbFactory', function($http,dbFactory){
        var change = {}
        
        change.set = function (element,obj,usr) {
        	var c = {}
            c.elemento = element
            c.valor = angular.toJson(obj)
            c.usuario = usr
            return dbFactory.postAPI('changeLog',c)
        }
    	
    	return change;
    }]);

})();