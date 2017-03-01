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
                var examInt = 0;
                var examExt = 0;
                var passInt = 0, passExt = 0;
                var notas = [];
                //Cantidad de Empleados
                $scope.usersQty = users.length;

                for (var i = 0; i < users.length; i++) {
                    users[i].modulo = JSON.parse(users[i].modulo);
                    users[i].examenes = JSON.parse(users[i].examenes);

                    if (users[i].empresa == "PRIII" || users[i].empresa == "") {
                        usersQtyInt++; 
                        examInt = users[i].examenes[1] + examInt; 
                        if (users[i].modulo[1] > 6) {
                            passInt++;
                        }
                    } else {
                        examExt = users[i].examenes[1] + examExt;
                        usersQtyExt++;  
                        if (users[i].modulo[1] > 6) {
                            passExt++;
                        }  
                    }

                }
                $scope.examInt = examInt;
                $scope.examExt = examExt;
                $scope.usersQtyInt = usersQtyInt;
                $scope.usersQtyExt = usersQtyExt;

                $scope.usersTrained = usersTrained;
                $scope.usersTrainedExt = usersTrainedExt;
                $scope.users = users;

                $scope.passInt = passInt;
                $scope.passExt = passExt;
                $scope.passExt = passExt;
                $scope.perPass = (passInt * 100)/(usersQtyInt);
                $scope.perPassExt = (passExt * 100)/( usersQtyExt);
            })
        }()
        $scope.getQuestions = function () {
            /*[Start load questions list]*/
            dbFactory.getAPI('preguntas','').then(function (response) {
                $scope.questions = response.data
            })
        }
        /*[End load users list]*/
        //Start fichas load
        dbFactory.getAPI('signals','').then(function (response) {
            $scope.signals = response.data; 
        })
        //End fichas load

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
