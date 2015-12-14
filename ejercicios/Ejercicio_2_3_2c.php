<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  mt_srand(time());
  // vamos a iterar 7 veces para obtener los números
  $cuantos = 0;
  $sacados[] = 0;
  while ($cuantos<7)
  {
    $candidato = mt_rand(1,49);
	if (array_search($candidato,$sacados)===false)
	{
	  $sacados[] = $candidato;
	  $cuantos++;
	}
  }
  unset($sacados[0]);
  // imprimimos el array de sacados
  foreach ($sacados as $idx => $val)
  {
    print "$idx : $val<br />\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>