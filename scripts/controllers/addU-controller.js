(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('addUController', ['$scope','$location','loginFactory','$http','$resource','dbFactory','logFactory',
                function($scope,$location,loginFactory,$http,$resource,dbFactory,logFactory){ 

        $scope.newU = {};
        $scope.addUData = function (obj) {
            obj.examenes = '{"1":0}';
            obj.modulo = '{"1":"0"}';
            console.log(obj);
            var aux = obj.empresa.split('');
            console.log(aux);
            var error = 0;
            for (var i = 0; i < aux.length; i++) {
                if(aux[i].charCodeAt(0) < 65 || aux[i].charCodeAt(0) >  90){
                    console.log("Error en el caracter: " + aux[i] + " en el index: " + i);
                    error++;
                }   
            }

            //Modal si los valores de empersa no son de la A a la Z
            var modalLogin = document.querySelector('#modalLogin');
            var modalTextLogin = document.querySelector('#modalLogin p');
            var modalLoginButton = document.querySelector('#modalLogin button');
            var modalTitle = document.querySelector('#modalLogin .navModal h1');
            var modalIcon = document.querySelector('#modalLogin .contenedor i');
            var modalBackground = document.querySelector('#modalLoginBackground');

            if(error > 0){

                var empresaInput = document.querySelector('#empresaInput');
                empresaInput.style.border = "2px solid red";

                modalTitle
                modalLogin.style.display = 'block';
                modalTextLogin.textContent = 'Error en el campo empresa: Solo se admiten valores de la A a la Z.'; 
                modalTitle.textContent = "Lo Sentimos";
                modalIcon.classList.add('fa-exclamation-triangle');
                modalLoginButton.addEventListener('click', function () {
                      modalLogin.style.display = 'none';
                });

            } else {

                //Si no hay errores, subir a la API
                dbFactory.postAPI('usuarios',obj).then(function (response) {
                    modalTitle.textContent = "Felicidades"
                    modalLogin.style.display = 'block';
                    modalTextLogin.textContent = 'Nuevo usuario '+ obj.user +' creado'; 
                    modalIcon.classList.add('fa-user-circle-o ');
                    modalLoginButton.addEventListener('click', function () {
                    modalLogin.style.display = 'none';});

                    logFactory.set('usuarios',obj,'Admin');
                    $scope.newU = {};
                }) 
                var empresaInput = document.querySelector('#empresaInput');
                empresaInput.style.border = "none";
            }
            

            
        }

        //Convertir el value de empresa en UPPERCASE
        var empresaInput = document.getElementById('empresaInput');
        $scope.onkeyup = function(){
            empresaInput.value = empresaInput.value.toUpperCase();
        }
             
    }])

})();