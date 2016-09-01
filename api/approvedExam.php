<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
$idUsuario = isset($_POST["idUsuario"])? $_POST["idUsuario"] : ''; 
date_default_timezone_set('America/Buenos_Aires');
$time = new DateTime();
$time->setTime(0,0,0);
$sql = 'UPDATE usuarios set moduloA = 1,fechaExamen = '.$time->getTimestamp().' WHERE id = '.$idUsuario;

$result = mysqli_query($link,$sql);

echo $sql;
/*if (!$result) {
  return "no anduvo";
  die(mysqli_error());
}else{
	return "ando";
}*/
?>