<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  $num = 24;
  
  //voy a asumir que es primo
  $es_primo = TRUE;
  for ($mul=2;($mul<$num) and $es_primo;$mul++)
  {
    //... y si encuentro un divisor...
    if (($num % $mul)==0)
	{
	  //... recuerdo que no es primo
	  $es_primo = FALSE;
	}
  }
  if ($es_primo)
  {
    print "$num es nº primo<br/>\n";
  }
  else
  {
    print "$num no es nº primo<br/>\n";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>