<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  $num = 2;
  $primos_encontrados = 0;
  do {
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
		$primos_encontrados++;
	  }
	  $num++;
  } while ($primos_encontrados<10);
  
  
  
  
  
  
  
  
  
  
  
  
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>