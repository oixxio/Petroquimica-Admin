(function () {
    'use strict';
    angular.module('app.dashboard').
    factory('linkFactory', ['$http', function($http){
    	var link = {};
    	var question = {}
        var user = {}
        link.setQEdit = function (Q) {
        	 question = Q 
        }
        link.getQ = function () {
        	 return question;
        }
        link.setUEdit = function (U) {
             user = U 
        }
        link.getU = function () {
             return user;
        }
    	
    	return link;
    }]);

})();