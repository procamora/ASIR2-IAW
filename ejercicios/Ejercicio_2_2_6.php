<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  // este primer bucle, imprime seis lineas de asteriscos
  for ($i=1;$i<=6;$i++)
  {
    // este segundo bucle, imprime los asteríscos de una línea concreta...
	// ... por eso va desde 1 hasta el nº de línea ($i)
    for ($j=1;$j<=$i;$j++)
	{
      print "*";
	}
	// cuando ha terminado de imprimirse los asteriscos de una línea...
	// ... imprimimos el retorno de carro de esa línea
	print "<br/>\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>