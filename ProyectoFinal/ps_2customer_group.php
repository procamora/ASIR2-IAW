<?php
//include 'cab.php';
//---------------------------------------

	$idcustomer = $_GET["idcustomer"];
	$idgroup = $_GET["idgroup"];
	$consulta = $_GET["Consulta"];

		
	print $idcustomer ."<br />";
	print $idgroup ."<br />";
	print $consulta ."<br />";


	
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
		
	
	if ($consulta == "insert") 
	{
		//Insertamos un registro, tenemos que ingresar el id_group y el id_customer
		$insertar = mysql_query("insert into ps_2customer_group(id_customer,id_group) values($idcustomer,$idgroup)",$enlace);
		if (!$insertar) {
		die('Consulta no válida: ' . mysql_error()); 
		}
		else 
			print "Usuario registrado";
	}
	
	elseif ($consulta == "delete")
	{
		//borramos un registro, para borrarlo tienes que indicarle el id_group y el id_customer
		$borrar = mysql_query("delete from ps_2customer_group where id_group=$idgroup and id_customer=$idcustomer ",$enlace);
			if (!$borrar) {
		die('Consulta no válida: ' . mysql_error()); }
		else 
			print "Usuario borrado";
	}
	
	elseif ($consulta == "update")
	{
		//actualiza el registro, para actualizarlo tienes que indicarle el id_group del grupo a actualizar y el id_customizer que es el valor quieres que tenga
		/*$num_reg = mysql_query("select count(*) from ps_2customer_group");
		if ($idcustomer > $num_reg)
		{
			print "El id introducido es mayor que el max id, introduce un numero inferior a $num_reg";
		}
		else*/
		$actualizar = mysql_query("update ps_2customer_group set id_customer=$idcustomer where id_group=$idgroup",$enlace);
			if (!$actualizar) {
				die('Consulta no válida: ' . mysql_error()); }
			else 
				print "Usuario actualizado";
	}
	
	else
		print "Opps, hemos tenido un fallo desconocido";
	
	print "<br /><br /><br /><a href=\"ps_2customer_group.html\">Volver</a>";
// Cerrar la conexión
  mysql_close($enlace);
//---------------------------------------
//include 'pie.php';
?>