(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('editFController', ['$scope','$window','$location','$http','logFactory','dbFactory','linkFactory',
    			function($scope,$window,$location,$http,logFactory,dbFactory,linkFactory,$timeout){
        
        $scope.modaleScale = 0;
        $scope.fData = linkFactory.getF();    
        // $scope.htmlcontent = $scope.fData.text;
        $scope.readyToSave = true;
        $scope.htmlcontent = $scope.fData.text.replace(/\r\n/g, '<br />').replace(/[\r\n]/g, '<br/>');   

       $scope.saveFData = function (obj) {
            if ($scope.readyToSave) {
                obj.text =  $scope.htmlcontent;
                var auxEditText1 = $scope.htmlcontent.replace(/<br\/><\/p><p>|<\/p><p>|<br>|<br\/>/g, '\r\n');
                var auxEditText2 = auxEditText1.replace(/<p>|<\/p>/g, '');
                console.log(auxEditText2);
                obj.text = auxEditText2;
                var key = obj.id
                //delete obj.id
                dbFactory.putAPI('signals',key,obj).then(function (response) {
                    linkFactory.updateJsonS(obj.idModulo).then(function () {                    
                        logFactory.set('signals',obj,'Admin')
                        //Start fichas load
                        dbFactory.getAPI('signals','').then(function (response) {
                            $scope.signals = response.data
                            $location.path('/fichas')
                        })
                        //End fichas load                    
                    });
                });

               $.ajax({
                    url: "api/upload.php",
                    type: "POST",
                    data:  $scope.formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        //alert(response)
                        console.log(response);
                    },
                    error: function(jqXHR, textStatus, errorMessage) {
                        console.log(errorMessage); // Optional
                    }
                });
            } else {
                modalContent('No cargo la Imagen.');
            }
        }


        $scope.uploadFile = function(element) { 
            $scope.$apply(function() {
                 $scope.imagen = element.files[0];
                 var imgName = $scope.imagen.name.split('.');
                $scope.fData.vidtmb = imgName[0];
             });

            $scope.formData = new FormData();
             $scope.formData.append("fileToUpload", $scope.imagen);

            console.log( $scope.imagen);
             console.log((/\.(png|psd|jpg)$/i).test( $scope.imagen.name));
             var formDataType = $scope.imagen.type.split('/');

               /*-----------------------------------------------------Filtra por Formato-----------------------------------------------*/
                if (formDataType[0] === "image") {
                    if ((/\.(jpg)$/i).test( $scope.imagen.name)) {
                        $scope._URL = window.URL || window.webkitURL;
                        var img = new Image();
                        img.src = $scope._URL.createObjectURL($scope.imagen);
                        $scope.objectURL = img.src;
                        // console.log(parseFloat($scope.objectURL));
                        
                        img.onload = function() {
                            $scope.width = this.width;
                            $scope.height = this.height;  
                            console.log("Ancho: "+$scope.width+", Alto:"+$scope.height+", Tamaño:"+$scope.imagen.size);

                           if($scope.imagen.size < 5000000) {
                              $scope.modalHide = true;
                              if($scope.width < 2000){
                                $scope.modalHide = true;
                                if($scope.height < 2000){
                                  $scope.modalHide = true;
                                  $scope.readyToSave = true;
                                } else {
                                    modalContent('Imagen muy alta.');
                                    $scope.readyToSave = false;
                                    $scope.$apply(function () {
                                        $scope.fData.vidtmb = 'jpg-icon';
                                    });
                                }
                                
                              } else {
                                modalContent('Imagen muy ancha.');
                                $scope.readyToSave = false;
                                $scope.$apply(function () {
                                    $scope.fData.vidtmb = 'jpg-icon';
                                });
                              }

                           }  else {
                                modalContent('Imagen muy pesada.');
                                $scope.readyToSave = false;
                                $scope.$apply(function () {
                                    $scope.fData.vidtmb = 'jpg-icon';
                                });
                            }
                      }
                    } else {
                        modalContent('Formato no compatible.');
                        $scope.readyToSave = false;
                        $scope.$apply(function () {
                            $scope.fData.vidtmb = 'jpg-icon';
                        });
                    }
                }
                                
      }


        //----------------------------------------------------MODAL--------------------------------------------------------------------------
        //Seleccionar el modal y sus elementos
        var modal = document.querySelector('#modal');
        var modalText = document.querySelector('#modal p');
        var modalButton = document.querySelector('#modal button');
        var modalBackground = document.querySelector('#modalBackground');
        var imageEdit = document.querySelector("#image-edit");

        //Funcion para mostrar el modal y setear su texto
        function modalContent (text) {
            modal.style.display = 'block';
            modalText.textContent = text;           
            $scope.setElement('files');
            modalBackground.style.position = 'fixed';
        }

        modalButton.addEventListener('click', function () {
            modal.style.display = 'none';
            modalBackground.style.position = 'initial';
            //Setear imagen JPG predeterminada al hacer click
        });


    }]);
    

})();