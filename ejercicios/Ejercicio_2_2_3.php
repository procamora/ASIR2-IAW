<?php
include 'cab.php';
//----------------------------------------------------------------------------------------------------
  $a = 4;
  $b = 8;
  
  if(($a>0) and  ($b<$a)) // and y && son equivalentes
  {
    print "José Luis";
  }
  elseif (($a>0) && ($b>=$a)) // and y && son equivalentes
  {
    print "Cruz Sánchez";
  }
  elseif ($a<0)
  {
    print "José Luis Cruz Sánchez";
  }
//----------------------------------------------------------------------------------------------------
include 'pie.php';
?>