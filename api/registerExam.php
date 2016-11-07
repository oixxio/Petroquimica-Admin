<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
$idUsuario = isset($_POST["idUsuario"])? $_POST["idUsuario"] : '';
$nota = isset($_POST["nota"])? $_POST["nota"] : '';
$nivel = isset($_POST["nivel"])? $_POST["nivel"] : '';

$select = 'SELECT * FROM usuarios WHERE id = 1';
$resSelect = mysqli_query($link,$select);

for ($i=0;$i<mysqli_num_rows($resSelect);$i++) {
  $response[$i] =  mysqli_fetch_object($resSelect);
}
$modulo = json_decode($response[0]->modulo);
$examenes = json_decode($response[0]->examenes);

$modulo->$nivel = $nota;
$examenes->$nivel += 1;

$time = new DateTime();
$time->setTime(0,0,0);

$sql = "UPDATE usuarios set modulo = '".json_encode($modulo)."',
examenes = '".json_encode($examenes)."',
fechaExamen = ".$time->getTimestamp()." WHERE id = ".$idUsuario;

$result = mysqli_query($link,$sql);
echo $sql;
return $sql;

//echo $sql;
/*if (!$result) {
  return "no anduvo";
  die(mysqli_error());
}else{
	return "ando";
}*/
?>
