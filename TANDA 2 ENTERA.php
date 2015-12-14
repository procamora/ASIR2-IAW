<?php

//Ejercicio_2_2_2.php

$var1 = 10;
$var2 = 3;

$suma = $var1 + $var2;
$multi = $var1 * $var2;

if ($suma > $multi)
{
	print "la suma es mayor que el producto";
}
	else
{
	print "el producto es mayor que la suma";
}


//Ejercicio_2_2_3.php

$a = mt_rand(-10,50);
$b = mt_rand(1,50);

if (($a > $b) && ($a > 0))
{
	print "Pablo";
}
	elseif (($a <= $b) and ($a > 0))
{
	print "Jose";
}
	elseif ($a < 0)
{
	print "rocamora";
}


//Ejercicio_2_2_4.php


$a = 5;

for($i=0;$i<11;$i++)
{
	$multi = $i * $a; 
	print "$i x $a = $multi \n";
}


//Ejercicio_2_2_5.php

  for ($i=100;$i>=0;$i-=2)
  {
    print "$i \n";
  }


//Ejercicio_2_2_6.php


for ($i=1;$i<=6;$i++)
{
	print " \n";

	for($j=1;$j<=$i;$j++)
	{
		print "*";
	}
}


//Ejercicio_2_2_7.php

$a = 18;

for ($mul=1;$mul<=$a;$mul++)
{
	if (($a % $mul)==0)
	{
	   print "$mul es divisor de $a \n";
	}
}




?>
