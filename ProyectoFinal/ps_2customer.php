<?php
//include 'cab.php';
//---------------------------------------

	$firstname = $_GET["firstname"];
	$lastname = $_GET["lastname"];
	$email = $_GET["email"];
	$passwd = $_GET["passwd"];
	$consulta = $_GET["Consulta"];
		
	print $firstname ."<br />";
	print $lastname ."<br />";
	print $email ."<br />";
	print $passwd ."<br />";
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
		$actualiza = mysql_query("update ps_2customer set firstname=\"$firstname\", lastname=\"$lastname\", email=\"$email\", passwd=\"$passwd\" 
		where email=\"$email\"",$enlace);
		if (!$actualiza) {
			die('usuario no actualizado: ' . mysql_error()); 
		}
		else 
			print "Usuario actualizado";
	}
	
	elseif ($consulta == "insert")
	{
		//Insertamos un registro, para que funcione debemos indicar todos los campos (firstname,lastname,email,passwd)
		$insertar = mysql_query("insert into ps_2customer(firstname,lastname,email,passwd) values(\"$firstname\", \"$lastname\", \"$email\", \"$passwd\")",$enlace);
		if (!$insertar) {
			die('Consulta no válida: ' . mysql_error()); 
		}
		else 
			print "Usuario registrado";
	}
	
	elseif ($consulta == "delete")
	{
		//borramos un registro
		//$borrar = mysql_query("delete from ps_2customer where firstname=\"$firstname\" and lastname=\"lastname\"",$enlace); Este mo  me ha funcionado
		$borrar1 = mysql_query("delete from ps_2customer where email=\"$email\"",$enlace);
		if (!$borrar1) {
			die('Consulta no válida: ' . mysql_error()); 
		}
		else 
			print "Usuario borrado";
	}
	
	else
		print "Opps, hemos tenido un fallo desconocido";
		
		
		
	print "<br /><br /><br /><a href=\"ps_2customer.html\">Volver</a>";
/*BORRAR
delete from ps_2customer
where firstname="pablo" and lastname="rocamora"		
*/

/* INSERTAR
insert into ps_2customer(firstname,lastname,email,passwd)
values("pablo","rocamora","pepe@ppepe.com","54DFRIHEF8")
*/

/*UPDATE
$num_reg = mysql_query(select count(*) from ps_2customer);
if ($id_customer > $num_reg)
{
	print "El id introducido es mayor que el max id, introduce un numero inferior a $num_reg"
}
else
update ps_2customer
set firstname="kike", lastname="lopezzz", email="klopez.18@gmail.com", passwd="52f518f51cc4ca8f00822a8cf134e682"
where email="klopez.18@gmail.com"

mysql_query("insert into personas (id,nombre,dni,altura)values ($i,\"$nom\",$dni,$alt)",$enlace))
*/

// Cerrar la conexión
  mysql_close($enlace);
//---------------------------------------
//include 'pie.php';
?>