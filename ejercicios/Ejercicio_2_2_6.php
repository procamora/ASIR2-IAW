<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  // este primer bucle, imprime seis lineas de asteriscos
  for ($i=1;$i<=6;$i++)
  {
    // este segundo bucle, imprime los aster�scos de una l�nea concreta...
	// ... por eso va desde 1 hasta el n� de l�nea ($i)
    for ($j=1;$j<=$i;$j++)
	{
      print "*";
	}
	// cuando ha terminado de imprimirse los asteriscos de una l�nea...
	// ... imprimimos el retorno de carro de esa l�nea
	print "<br/>\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>