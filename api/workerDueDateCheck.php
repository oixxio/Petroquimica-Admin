<?php 
echo date("l jS \of F Y h:i:s A");
echo "<br><br><br><br>";
ini_set('display_errors', 'On');
error_reporting(E_ALL | E_STRICT);

// connect to the mysql database
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
mysqli_set_charset($link,'utf8');


$sql = "select * from 'usuarios'";

// excecute SQL statement
$result = mysqli_query($link,$sql);

highlight_string("<?php\n\n" . var_export($result, true) . ";\n\n?>");


mysqli_close($link);
 ?>