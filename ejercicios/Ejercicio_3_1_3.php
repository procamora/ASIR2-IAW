 <?php 
 include "cab.php";
 // -----------------------------------------------------------
 ?>
 <FORM action="Ejercicio_3_1_3b.php" method="post">
    <table>
	<tr>
    <td>Nombre:</td><td><INPUT type="text" name="nom" size="40" ></td>
	</tr>
	<tr>
    <td>DNI:</td><td><INPUT type="text" name="dni"></td>
	</tr>
	<tr>
    <td>Altura:</td><td><INPUT type="text" name="alt" size="5" ></td>
	</tr>
    </table>
    <INPUT type="submit" value="Insertar">
	<INPUT type="reset" value="Borrar datos">
 </FORM>
 <?php
 // -----------------------------------------------------------
 include "pie.php";
 ?>