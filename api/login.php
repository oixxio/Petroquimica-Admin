<?php 
// connect to the mysql database
$link = mysqli_connect('localhost', 'root','', 'petroquimica');
mysqli_set_charset($link,'utf8');
$data = file_get_contents('php://input');
$user = isset($_POST['user'])? $_POST['user'] : ''; 
$pass = isset($_POST['pass'])? $_POST['pass'] : ''; 
$usuario = [];
// if ($data != "") {
//     $comData = json_decode($data);
//     $user = $comData->usuario;
//     $pass = $comData->contrasenia; 
//  }   
$query = "SELECT * FROM usuarios where user = '".$user."' and pass = '".$pass."'";
$resultQuery = $link->query($query);

for ($i=0;$i<mysqli_num_rows($resultQuery);$i++) {
    $usuario[$i] = mysqli_fetch_object($resultQuery);
 }
 echo json_encode($usuario);
// close mysql connection
mysqli_close($link);
?>