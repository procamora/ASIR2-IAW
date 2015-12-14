<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  $a = 7;
  $b = 3;
  $suma = $a+$b;
  $prod = $a*$b;
  if ($suma>$prod)
  {
    print "La suma ($suma) es mayor que el producto ($prod)";
  }
  else
  {
    print "La suma ($suma) no es mayor que el producto ($prod)";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>