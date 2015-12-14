<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  mt_srand(time());
  // metemos los 49 números en el bombo
  for ($i=1;$i<=49;$i++)
  {
    $bombo [$i] = $i;
  }
  // removemos el bombo
  for ($i=1;$i<=49;$i++)
  {
    $pos1 = $i;
    $pos2 = mt_rand(1,49);
	$a = $bombo[$pos1];
	$b = $bombo[$pos2];
	$bombo[$pos1]=$b;
	$bombo[$pos2]=$a;
  }
  // ahora sacamos los 7 primeros
  for ($i=1;$i<=7;$i++)
  {
    print "$i : $bombo[$i]<br />\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>