<?php
include 'cab.php';
//---------------------------------------

  // Conectar
  $enlace =  mysql_connect('localhost', 'asir', 'asir1');
  if (!$enlace) die('<br/>No pudo conectarse: ' . mysql_error());

  // Poner por defecto, el esquema pruebas
  if (!mysql_select_db('pruebas',$enlace)) die('<br/>No pudo seleccionarse la base de datos');

  // recuperamos los valores pasados por POST
  $id  = $_POST["id"];
  $nom = $_POST["nom"];
  $dni = $_POST["dni"];
  $alt = $_POST["alt"];

  // ahora vamos a modificar el registro
  if (mysql_query(
    "update personas
      set nombre=\"$nom\",dni=\"$dni\",altura=$alt
      where id=$id",$enlace))
  {
    print "<br/>Modificado registro con id nº $id. <a href=\"Ejercicio_3_1_4.php?id_per=$id\">CONSULTAR OTRA VEZ</a>";
  }
  else
  {
    print "<br/>Error al modificar registro: ".mysql_error();
  }
  
//---------------------------------------
include 'pie.php';
?>
