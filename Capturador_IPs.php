<?php
$ip = $_SERVER['REMOTE_ADDR']; //IP
$meses = array('enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'); //Meses
$nombre = 'logs'; //Nombre de archivo
$dia = date('d'); //Dia
$mes = date('m') - 1; //Mes
$ano = date('Y'); //Año
$hora = date('h:i:s'); //Hora
$file = fopen($nombre.'.txt', 'a+'); //Abrimos archivo
fwrite($file,  'La IP '.$ip.' accedio el '.$dia.' de '.$meses[$mes].' del '.$ano.' a las '.$hora."\r\n"); //Guardamos información
fclose($file);//Cerramos archivo
?>