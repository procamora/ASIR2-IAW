 <?php 
 include "cab.php";
 // -----------------------------------------------------------
  
  // Conectar
  $enlace =  mysql_connect('localhost', 'asir', 'asir1');
  if (!$enlace) die('<br/>No pudo conectarse: ' . mysql_error());

  // Poner por defecto, el esquema pruebas
  if (!mysql_select_db('pruebas',$enlace)) die('<br/>No pudo seleccionarse la base de datos');

  // comprobamos el parámetro
  if (!isset($_GET["id_per"]))
  {
    die ("Debe establecer el parámetro id_per");
  }
  else
    $id = $_GET["id_per"];
	
  // consultamos el id pasado como parámetro get
  if (($res=mysql_query("select * from personas where id=$id",$enlace))
    and ($reg=mysql_fetch_assoc($res)))
  {
	  // recuperamos los valores de la consulta
	  $nom = $reg["nombre"];
	  $dni = $reg["dni"];
	  $alt = $reg["altura"];
  }
  else
    die ("Imposible acceder a la persona solicitada");
 ?>
 
 <FORM action="Ejercicio_3_1_4b.php" method="post">
    <table>
	<tr>
    <td>Id:</td><td><INPUT type="text" name="id" size="5" value="<?php echo $id;?>" readonly></td>
	</tr>
	<tr>
    <td>Nombre:</td><td><INPUT type="text" name="nom" size="40" value="<?php echo $nom;?>"></td>
	</tr>
	<tr>
    <td>DNI:</td><td><INPUT type="text" name="dni" value="<?php echo $dni;?>"></td>
	</tr>
	<tr>
    <td>Altura:</td><td><INPUT type="text" name="alt" size="5" value="<?php echo $alt;?>"></td>
	</tr>
    </table>
    <INPUT type="submit" value="Guardar cambios">
	<INPUT type="reset" value="Descartar cambios">
 </FORM>
 <?php
 // -----------------------------------------------------------
 include "pie.php";
 ?>