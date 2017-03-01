(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('fichasController', ['$scope','$location','linkFactory','$http','$resource','dbFactory', 
    			function($scope,$location,linkFactory,$http,$resource,dbFactory){
        

        $scope.signals1 = [];
        $scope.signals2 = [];
        $scope.signals3 = [];
        $scope.signals4 = [];
        $scope.signals5 = [];
        $scope.signals6 = [];
        $scope.signals7 = [];

        /*[End refresh users list]*/
    	 $scope.setFEdit = function (F) {
        	 linkFactory.setFEdit(F)
        	 $location.path('fichaEdit');
        }

        

        $scope.readModules = function(){
            for (var i = 0; i < $scope.signals.length; i++) {
                 if ($scope.signals[i].idModulo === "1") {
                    $scope.signals[i].text = $scope.signals[i].text.replace(/\r\n/g, '<br />').replace(/[\r\n]/g, '<br/>'); 
                    $scope.signals1.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "2") {
                    //console.log($scope.signals[i]);
                    $scope.signals2.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "3") {
                    $scope.signals3.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "4") {
                    $scope.signals4.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "5") {
                    $scope.signals5.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "6") {
                    $scope.signals6.push($scope.signals[i]);
                 }else if ($scope.signals[i].idModulo === "7") {
                    $scope.signals7.push($scope.signals[i]);
                 }else{};            
            }
        };
    }])

})();