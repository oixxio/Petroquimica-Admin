<?php

echo date("l jS \of F Y h:i:s A");
echo "<br><br><br><br>";
ini_set('display_errors', 'On');
error_reporting(E_ALL | E_STRICT);

//Conecta a base de datos SQL
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
mysqli_set_charset($link,'utf8');

$sql = "select * from usuarios";

//Ejecuta la query en SQL
$result = mysqli_query($link,$sql);

//Obtiene el timestamp de la fecha de hoy con hora 0:00:00
$currentDate = new DateTime();
$currentDate = $currentDate->getTimestamp();
$currentDate = strtotime(date('Y-m-d',$currentDate).' 00:00:00');
$weekday = date('N', $currentDate);

//Levanta los usuarios de la tabla y compara si pasaron dos años y si faltan 30 dias para que se venza
$usersWarning = "";
$usersExpired = "";
for ($i=0;$i<mysqli_num_rows($result);$i++) {
	$user = mysqli_fetch_object($result);
	$timePassedSinceExam = $currentDate - $user->fechaExamen;

	//60480000segs = 23 meses
	//63072000segs = 24 meses
	if ($timePassedSinceExam < 60480000) {
	} elseif (60480000 < $timePassedSinceExam && $timePassedSinceExam < 63072000) {
		$examDate = date('d/m/Y', $user->fechaExamen);
		$usersWarning .= "->".$user->lastname.", ".$user->name." - DNI: ".$user->DNI." - ".$user->empresa." - Fecha de Examen: ".$examDate."\n";
	} else {
		if ($user->moduloA == '1') { //Si esta aprobado el examen
			$key = $user->id;
			$sql = "update usuarios set moduloA='0' where id=$key";
			mysqli_query($link,$sql);
			$sql = "update usuarios set examenRealizado='0' where id=$key";
			mysqli_query($link,$sql);
			$usersExpired .= "->".$user->lastname.", ".$user->name." - DNI: ".$user->DNI." - ".$user->empresa." - Fecha de Examen: ".$examDate."\n";
		}
	}
}

//Si es Lunes (Día 1) envía mail con los informes
if ($weekday == '1') { //Si es Lunes...
	$email_to = "mugnainiguillermo@gmail.com";//faltamail;
	$email_subject = "Reporte semanal: Examen Seguridad e Higiene PRIII [Correo automatico - No responder]";
	if ($usersWarning != "" || $usersExpired != "") {
		//Se envia mail para advertencias vencimientos
		$email_message = "";
		$email_message .= "Los siguientes usuarios han EXPIRADO su tiempo de capacitacion (mayor a 24 meses): \n";
		$email_message .= $usersExpired . "\n\n";
		$email_message .= "Los siguientes usuarios estan POR EXPIRAR su tiempo de capacitacion en menos de 30 dias: \n";
		$email_message .= $usersWarning . "\n\n";
	} else {
		$email_message = "No hay novedades que reportar.\n\n";
	}
	$email_message .= "\n\n<Sistema Simulador Petroquímica Rio III ADMIN>";
	var_dump(@mail($email_to, $email_subject, $email_message));	
}

//Cierra conexión a DB
mysqli_close($link);
 ?>