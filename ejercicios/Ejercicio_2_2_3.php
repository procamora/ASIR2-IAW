<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  $a = 4;
  $b = 8;
  
  if(($a>0) and  ($b<$a)) // and y && son equivalentes
  {
    print "Jos� Luis";
  }
  elseif (($a>0) && ($b>=$a)) // and y && son equivalentes
  {
    print "Cruz S�nchez";
  }
  elseif ($a<0)
  {
    print "Jos� Luis Cruz S�nchez";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>