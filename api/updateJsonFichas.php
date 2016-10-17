<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$link = mysqli_connect('localhost', 'root', '', 'petroquimica');
mysqli_query($link,"SET NAMES 'utf8'");
$raw_JSON = file_get_contents('php://input');
$JSON = json_decode($raw_JSON);
$idModulo = $JSON->data;
$sql = "select * from signals where idModulo = ".$idModulo;
$result = mysqli_query($link,$sql);
$input = '';
$i=0;
while ($data =  mysqli_fetch_assoc($result)) {
	$input = $input.($i>0?",\n":'').json_encode($data);
	$i++;
}
//$input = fixBadUnicodeForJson($input);
$input = iconv("UTF-8", "Windows-1252", $input);
$cuestionario = fopen($idModulo."/signals.json", "w");
fwrite($cuestionario, '{ "signals": ['.$input."]}");
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