(function () {
    'use strict';

    angular.module('app.dashboard').
    controller('indexController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

        dbFactory.getAPI('usuarios','').then(function (response) {
            var users = response.data
            var usersTrained = 0
            $scope.usersQty = users.length

            for (var i = 0; i < response.length; i++) {
                usersTrained += parseInt(response[i].moduloA)
                if (users[i].moduloA == '1') {
                    users[i].examen = 'Si'
                }else{
                    users[i].examen = 'No'
                }
            }
            $scope.usersTrained = usersTrained
            $scope.users = users
        }), function (error) {
             alert(error)
        }
        dbFactory.getAPI('preguntas','').then(function (response) {
           $scope.questions = response.data
            dbFactory.getAPI('respuestas','').then(function (response) {
                var answers = response.data
                var grade = 0
                var pass = 0,fail = 0
                for (var i = 0; i < answers.length; i += 10) {
                    grade = 0;
                    for (var j = 0; j < 10; j++) {
                        if(answers[i+j].respuesta == $scope.questions[j].respCorrecta){
                            grade++
                        }
                    }
                    if (grade >= 7){
                        pass += 1
                    }else{
                        fail += 1
                    }
                }
                $scope.pass = pass;
                $scope.fail = fail;

                $scope.perPass = (pass * 100)/(pass+fail)
            })
        })
        dbFactory.getAPI('changeLog','').then(function (response) {
            $scope.changes = response
        })
    	/*tipo de usuario mockapeado*/
    	switch (loginFactory.userRole()) {
    		case 'admin':
    			$scope.userRole = 1;
    			break;
    		default:
    			// statements_def
    			break;
    	}

    	/*------------------------*/
    	//Esta funcion lo que hace es mostrar el menu del dash dependiendo del nivel de usuario obtenido
    	$scope.userMenu = function(role) {
    		var style = "";
			if (role === $scope.userRole) {
				style = {"display":"all"};
			}else {
				style = {"display":"none"};
			}
			return style;
    	}
    	//Funcion que permite navegar entre views
    	$scope.goTo = function (view) {
    		 $location.path(view);
    	}
        $scope.setActive = function(option){
            switch (option) {
                case 1:
                    $scope.active1 = 'active'
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 2:
                    $scope.active1 = ''
                    $scope.active2 = 'active'
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 3:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = 'active'
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 4:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = 'active'
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 5:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = 'active'
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 6:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = 'active'
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 7:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = 'active'
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 8:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = 'active'
                    $scope.active9 = ''
                    $scope.active10 = ''
                    break;
                case 9:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = 'active'
                    $scope.active10 = ''
                    break;
                case 10:
                    $scope.active1 = ''
                    $scope.active2 = ''
                    $scope.active3 = ''
                    $scope.active4 = ''
                    $scope.active5 = ''
                    $scope.active6 = ''
                    $scope.active7 = ''
                    $scope.active8 = ''
                    $scope.active9 = ''
                    $scope.active10 = 'active'
                    break;
                default:
                    // statements_def
                    break;
            }
        }


    }])

})();