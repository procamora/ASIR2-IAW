<?php
//include 'cab.php';
//---------------------------------------

  // Conectar al sistema gestor
  $enlace =  mysql_connect('localhost', 'usuario', 'usuario1');
  if (!$enlace) {
    die('<br/>No pudo conectarse: ' . mysql_error());
  }
  else
    print "<br/>Conectado a $enlace";
	
  //Poner por defecto, el esquema 
  if (!mysql_select_db('prestadeporte_db',$enlace))
  {
    print "<br/>No pudo seleccionarse la base de datos: ". mysql_error();
  }
  else
    print "<br/>Seleccionada la base de datos<br/>";

	//---------------------------------------
	
	
	$nom_colum = mysql_query("SELECT COLUMN_NAME FROM information_schema.COLUMNS WHERE TABLE_NAME = \"ps_2address\"",$enlace);
	$nom_selec = mysql_query("select * from ps_2address",$enlace);
	$registro = mysql_fetch_array($nom_colum);
	
	print $nom_selec[1];
	/*
	foreach $nom_colum as $prueba_clo {
	print $prueba_clo;
	  print "<table>";
	  print "<tr><td><b>Nombre</b></td><td><b>Estatura</b></td></tr>";
	  print "<tr>";
	  print "<td>".$prueba_clo[1]."</td>";
	  print "<td>".$registro[2]."</td>";	  
	  print "</tr>";
      print "</table>";
	}*/
	
// Cerrar la conexión
  mysql_close($enlace);
//---------------------------------------
//include 'pie.php';
?>