<?php
//include 'cab.php';
//---------------------------------------

	$firstname = $_GET["firstname"];
	$lastname = $_GET["lastname"];
	$address = $_GET["address"];
	$postcode = $_GET["postcode"];
	$city = $_GET["city"];
	$phone = $_GET["phone"];
	$dni = $_GET["dni"];
	$consulta = $_GET["Consulta"];
		
	print $firstname ."<br />";
	print $lastname ."<br />";
	print $address ."<br />";
	print $postcode ."<br />";
	print $city ."<br />";
	print $phone ."<br />";
	print $dni ."<br />";
	print $consulta ."<br />";

	
  //Conectar al sistema gestor
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
    print "<br/>Seleccionada la base de datos <br />";

	//---------------------------------------
	
	if ($consulta == "update")
	{
		//se actualiza rellenando el campo obligatoriamente el campo dni y despues los valores que quieras modificar
		$actualiza = mysql_query("update ps_2address set firstname=\"$firstname\", lastname=\"$lastname\", address1=\"$address\", postcode=\"$postcode\", city=\"$city\", phone=\"$phone\", dni=\"$dni\" where dni=\"$dni\"",$enlace);
		if (!$actualiza) {
			die('usuario no actualizado: ' . mysql_error()); 
		}
		else 
			print "Usuario actualizado";
	}
	
	elseif ($consulta == "insert")
	{
		//Insertamos un registro, tenemos que rellenar todos los datos
		$insertar = mysql_query("insert into ps_2address(firstname, lastname, address1, postcode, city, phone, dni) values(\"$firstname\", \"$lastname\", \"$address\", \"$postcode\", \"$city\", \"$phone\", \"$dni\")",$enlace);
		if (!$insertar) {
			die('Consulta no válida: ' . mysql_error()); 
		}
		else 
			print "Usuario registrado";
	}
	
	elseif ($consulta == "delete")
	{
		//borramos un registro, solo tenemos que indicar su DNI
		$borrar = mysql_query("delete from ps_2address where dni=\"$dni\"",$enlace);
		if (!$borrar) {
			die('Consulta no válida: ' . mysql_error()); }
		else 
			print "Usuario borrado";
	}
	
	else
		print "Opps, hemos tenido un fallo desconocido";
	
	
	
	
	
	
	print "<br /><br /><br /><a href=\"ps_2address.html\">Volver</a>";

// Cerrar la conexión
  mysql_close($enlace);
//---------------------------------------
//include 'pie.php';
?>