(function () {
    'use strict';

    /*[Start indexController]*/
    angular.module('app.dashboard').
    controller('indexController', ['$scope','$location','loginFactory','$http','$resource','dbFactory', 
    			function($scope,$location,loginFactory,$http,$resource,dbFactory){

        /*[Start load users list]*/
        $scope.getUsers = function () {
            dbFactory.getAPI('usuarios','').then(function (response) {
                var users = response.data;
                var usersTrained = 0;
                var usersTrainedExt = 0;
                var usersQtyInt = 0;
                var usersQtyExt = 0;

                
                //Cantidad de Empleados
                $scope.usersQty = users.length;

                for (var i = 0; i < users.length; i++) {
                    if (users[i].empresa == "PRIII" || users[i].empresa == "") {
                        usersQtyInt++;
                    } else {
                        usersQtyExt++;
                    }
                    //Determinacion de campo 'Examen'
                    if (users[i].moduloA == '1') {
                        users[i].examen = 'Si'
                    } else {
                        users[i].examen = 'No'
                    }
                    //Determinacion de campo 'examenRealizoStr'
                    if (users[i].examenRealizado == '1') {
                        users[i].examenRealizadoStr = 'Si'
                    } else {
                        users[i].examenRealizadoStr = 'No'
                    }
                    //Cantidad de examenes realizados
                    if (users[i].empresa == "PRIII") {
                        usersTrained += parseInt(users[i].examenRealizado);
                    } else {
                        usersTrainedExt += parseInt(users[i].examenRealizado);
                    }
                }
                
                $scope.usersQtyInt = usersQtyInt;
                $scope.usersQtyExt = usersQtyExt;

                $scope.usersTrained = usersTrained
                $scope.usersTrainedExt = usersTrainedExt
                $scope.users = users
            })
        }
        $scope.getUsers()
        $scope.getQuestions = function () {
            /*[Start load questions list]*/
            dbFactory.getAPI('preguntas','').then(function (response) {
                $scope.questions = response.data
                alert(JSON.stringify(response.data))
            })
        }
        /*[End load users list]*/
        //Start fichas load
        dbFactory.getAPI('signals','').then(function (response) {
            $scope.signals = response.data
        })
        //End fichas load
        /*[Start load questions list]*/
        dbFactory.getAPI('preguntas','').then(function (response) {
           $scope.questions = response.data
           /*[Start load answers list]*/
            dbFactory.getAPI('respuestas','').then(function (response) {
                var answers = response.data
                var grade = 0
                var pass = 0, passExt = 0, fail = 0, failExt = 0;
                var answerIndex;

                for (var i = 0; i < 5; i++) {
                    if ($scope.users[i].examenRealizado == 1) {
                        grade = 0;
                        for (var j = 0; j < answers.length; j++) {
                            if ($scope.users[i].id == answers[j].idUsuario) {
                                answerIndex = parseInt(answers[j].index) - 1;
                                if(answers[j].respuesta == $scope.questions[answerIndex].respCorrecta){
                                    grade++;
                                }
                            }
                        }
                        if(grade >= 8){
                            if ($scope.users[i].empresa == "PRIII") {
                                pass += 1
                            } else {
                                passExt += 1
                            }
                        }else{
                            if ($scope.users[i].empresa == "PRIII") {
                                fail += 1
                            } else {
                                failExt += 1
                            }
                        }
                    }
                }

                $scope.pass = pass;
                $scope.fail = fail;
                $scope.passExt = passExt;
                $scope.failExt = failExt;                
                $scope.perPass = (pass * 100)/(pass+fail);
                $scope.perPassExt = (passExt * 100)/(passExt+failExt);

            })
            /*[End load answers list]*/
        })
        /*[End load questions list]*/
        /*[Start load log list]*/
        dbFactory.getAPI('changeLog','').then(function (response) {
            $scope.changes = response.data
        })
        /*[End load log list]*/
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


        //START Login Security
        $scope.logIn = function (loginAttempt) {
            /*[Start load questions list]*/
            dbFactory.getAPI('admins','').then(function (response) {
                $scope.admins = response.data
                alert(JSON.stringify(response.data))
                for (var i = 0; i < $scope.admins.length; i++) {
                    if (loginAttempt.user == $scope.admins[i].user) {
                        if (loginAttempt.pass == $scope.admins[i].pass) {
                            $scope.logged = true;
                            $location.path('/dashboard');
                        } else {
                            $scope.logged = false;
                        }
                    }
                }
                if ($scope.logged != true) { alert("Usuario/Contraseña incorrectos");}

            })
        }
        //END Login Security

        //START Chequea si está loggeado o no
        $scope.checkLoggedIn = function () {
            if ($scope.logged != true) { 
                $location.path('/'); 
            }
        }
        //END Chequea si está loggeado o no

    }])
    /*[End indexController]*/
})();