 <?php 
 include "../cab.php";
 // -----------------------------------------------------------
   $cad1 = $_POST["cad1"];
   $cad2 = $_POST["cad2"];
 // -----------------------------------------------------------
   print "Cadena 1: $cad1<br />\n";
   print "Cadena 2: $cad2<br />\n";
  /* $lev = levenshtein($input, $word);*/
   print levenshtein($cad1, $cad2);
 // -----------------------------------------------------------
 include "../pie.php";
 ?>