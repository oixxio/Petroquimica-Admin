<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
mysqli_query($link,"SET NAMES 'utf8'");
$sql = "select * from preguntas";
$result = mysqli_query($link,$sql);
$input = '';
$i=0;
while ($data =  mysqli_fetch_assoc($result)) {
	$input = $input.($i>0?',':'').json_encode($data);
	$i++;
}
$input = fixBadUnicodeForJson($input);
$cuestionario = fopen("cuestionario.json", "w");
fwrite($cuestionario, '{ "cuestionario": ['.$input."]}");
fclose($cuestionario);
//Fundamental!
function fixBadUnicodeForJson($str) {
    $str = preg_replace("/\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})/e", 'chr(hexdec("$1")).chr(hexdec("$2")).chr(hexdec("$3")).chr(hexdec("$4"))', $str);
    $str = preg_replace("/\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})/e", 'chr(hexdec("$1")).chr(hexdec("$2")).chr(hexdec("$3"))', $str);
    $str = preg_replace("/\\\\u00([0-9a-f]{2})\\\\u00([0-9a-f]{2})/e", 'chr(hexdec("$1")).chr(hexdec("$2"))', $str);
    $str = preg_replace("/\\\\u00([0-9a-f]{2})/e", 'chr(hexdec("$1"))', $str);
    return $str;
}
?>