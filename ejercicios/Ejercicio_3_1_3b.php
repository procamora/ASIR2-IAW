<?php
include 'cab.php';
//---------------------------------------

  // Conectar
  $enlace =  mysql_connect('localhost', 'asir', 'asir1');
  if (!$enlace) die('<br/>No pudo conectarse: ' . mysql_error());

  // Poner por defecto, el esquema pruebas
  if (!mysql_select_db('pruebas',$enlace)) die('<br/>No pudo seleccionarse la base de datos');

  // recuperamos los valores pasados por POST
  $nom = $_POST["nom"];
  $dni = $_POST["dni"];
  $alt = $_POST["alt"];

  // calculamos el id, buscando el mayor+1
  if (($res=mysql_query('select max(id) from personas',$enlace))
      and ($ida=mysql_fetch_row($res)))
  {
    $id = $ida[0]+1;
  }
  else
    $id=1;

  // ahora vamos a insertar el registro
  if (mysql_query("insert into personas (id,nombre,dni,altura)
    values ($id,\"$nom\",\"$dni\",$alt)",$enlace))
  {
    print "<br/>Insertado registro con id nº $id.
 	  <br/><a href=\"Ejercicio_3_1_3.php\">INSERTAR OTRO</a>
	  <br/><a href=\"Ejercicio_3_1_4.php?id_per=$id\">CONSULTAR EL INSERTADO</a>";
  }
  else
  {
    print "<br/>Error al insertar registro: ".mysql_error();
  }
  
//---------------------------------------
include 'pie.php';
?>
