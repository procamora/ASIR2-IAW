<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  mt_srand(time());
  // generar array de notas
  for ($i=1;$i<=100;$i++)
  {
    $notas[$i] = mt_rand(1,10);
  }
  // obtener array con diferentes notas y sus repeticiones
  $repeticiones = array_count_values($notas);
  arsort($repeticiones);
  // imprimimos el array de sacados
  foreach ($repeticiones as $nota => $veces)
  {
    print "nota $nota : $veces veces<br />\n";
  }
  // 
  $dif_repe
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>