<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
$idUsuario = isset($_POST["idUsuario"])? $_POST["idUsuario"] : ''; 
$idModulo = isset($_POST["idModulo"])? $_POST["idModulo"] : ''; 
$index = isset($_POST["index"])? $_POST["index"] : ''; 
$respuesta = isset($_POST["respuesta"])? $_POST["respuesta"] : ''; 
$sql = 'INSERT INTO respuestas (idUsuario,idModulo,num,respuesta) VALUES 
	("'.$idUsuario.'","'.$idModulo.'","'.$index.'","'.$respuesta.'")';

$result = mysqli_query($link,$sql);

return $sql;
/*if (!$result) {
  return "no anduvo";
  die(mysqli_error());
}else{
	return "ando";
}*/
?>