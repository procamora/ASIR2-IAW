<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  // metemos los 49 números en el bombo
  for ($i=1;$i<=49;$i++)
  {
    $bombo [$i] = $i;
  }
  // removemos el bombo
  shuffle($bombo);
  // ahora sacamos los 7 primeros
  for ($i=1;$i<=7;$i++)
  {
    print "$i : $bombo[$i]<br />\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>