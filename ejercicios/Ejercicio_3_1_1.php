<?php
include 'cab.php';
//---------------------------------------

// Conectar al sistema gestor
  $enlace =  mysql_connect('localhost', 'asir', 'asir1');
  if (!$enlace) {
    die('<br/>No pudo conectarse: ' . mysql_error());
  }
  else
    print "<br/>Conectado a $enlace";

// Poner por defecto, el esquema pruebas
  if (!mysql_select_db('pruebas',$enlace))
  {
    print "<br/>No pudo seleccionarse la base de datos: ". mysql_error();
  }
  else
    print "<br/>Seleccionada la base de datos";

// Borrar la primero, si existe
  mysql_query("drop table if exists personas",$enlace);

// Crear una nueva tabla
  if (! mysql_query("create table personas (
    id integer not null primary key,
	nombre varchar(100),
	dni varchar(20),
	altura integer)",$enlace))
  {
    print "<br/>No pudo crearse la tabla: ". mysql_error();
  }
  else
    print "<br/>Creada la tabla personas";
// Vamos a insertar 1000 registros en la tabla creada
  $nombres[] = "JOSE";
  $nombres[] = "MARIA";
  $nombres[] = "JUAN";
  $nombres[] = "MARTA";
  $nombres[] = "PEDRO";
  $nombres[] = "ISABEL";
  $nombres[] = "ROBERTO";
  $nombres[] = "MAGDALENA";
  $nombres[] = "ALBERTO";
  $nombres[] = "CRISTINA";
  $apellidos[] = "PEREZ";
  $apellidos[] = "GIMENEZ";
  $apellidos[] = "GARCIA";
  $apellidos[] = "CONESA";
  $apellidos[] = "CANOVAS";
  $apellidos[] = "SANCHEZ";
  $apellidos[] = "RODRIGUEZ";
  $apellidos[] = "MARTINEZ";
  $apellidos[] = "HERNANDEZ";
  $apellidos[] = "LOPEZ";
  for ($i=1;$i<=1000;$i++)
  {
    $nom = $apellidos[mt_rand(0,9)]
	       ." ".$apellidos[mt_rand(0,9)]
		   .", ".$nombres[mt_rand(0,9)];
	$dni = mt_rand(10000000,99999999);
    $alt = mt_rand(100,200);
    if (! mysql_query("insert into personas (id,nombre,dni,altura)
	  values ($i,\"$nom\",$dni,$alt)",$enlace))
    {
      print "<br/>No se pudo insertar registro: ". mysql_errno().": ".mysql_error();
    }
  }

// Cerrar la conexión
  mysql_close($enlace);
//---------------------------------------
include 'pie.php';
?>
