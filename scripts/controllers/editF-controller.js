(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editFController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory){
                  
        $scope.fData = linkFactory.getF();    

        $scope.saveFData = function (obj) {
            var key = obj.id
            //delete obj.id
            dbFactory.putAPI('signals',key,obj).then(function (response) {
                linkFactory.updateJsonS().then(function () {                    
                    logFactory.set('signals',obj,'Admin')
                    //Start fichas load
                    dbFactory.getAPI('signals','').then(function (response) {
                        $scope.signals = response.data
                        $location.path('/fichas')
                    })
                    //End fichas load                    
                });
            }) 
        }
        $scope.uploadFile = function(element) {
            $scope.$apply(function() {
                 $scope.imagen = element.files[0];
             });
            var formData = new FormData();
            formData.append("fileToUpload", $scope.imagen);

            $.ajax({
               url: "api/upload.php",
               type: "POST",
               data: formData,
               processData: false,
               contentType: false,
               success: function(response) {
                  alert(response)
                  alert("Cambios guardados correctamente")
               },
               error: function(jqXHR, textStatus, errorMessage) {
                   console.log(errorMessage); // Optional
               }
            });
        }
    }])

})();