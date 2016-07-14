(function () {
    'use strict';
    angular.module('app.dashboard').
    factory('linkFactory', ['$http', function($http){
    	var link = {};
    	var question = {}
        var user = {}
        var ficha = {}

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
        link.getF = function () {
             return ficha;
        } 
        link.setFEdit = function (F) {
             ficha = F 
        }        
    	link.updateJsonQ = function () {
            return $http.get('api/updateJsonCuestionario.php/');
        }
        link.updateJsonS = function () {
            return $http.get('api/updateJsonFichas.php/');
        }
    	return link;
    }]);

})();