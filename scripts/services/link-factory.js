(function () {
    'use strict';
    angular.module('app.dashboard').
    factory('linkFactory', ['$http', function($http){
    	var link = {};
    	var question = {}
        link.setQEdit = function (Q) {
        	 question = Q 
        }
        link.getQ = function () {
        	 return question;
        }
    	
    	return link;
    }]);

})();