<?php

include 'cab.php';

//----------------------------------------
  function imprimeArray (&$a)
  {
    var_dump($a);
	print "<br/>\n";
  }
  
  function listaArray($nombre,&$a)
  {
    print "<br/>Array $nombre (".count($a)." elemento/s):<br/>\n";
	foreach ($a as $idx => $ele)
	{
		print "$idx : $ele<br/>\n";
	}
  }
  

  // cuatro formas equivalentes de crear un array ----------------------
  // forma 1
  $a1 = array (0 => 23 , 1 =>18 , 2 => 41);
  // forma 2
  $a2 = array (23,18,41);
  // forma 3
  $a3[0] =23;
  $a3[1] =18;
  $a3[2] =41;
  // forma 4
  $a4[] =23;
  $a4[] =18;
  $a4[] =41;
  // comprobar que todos son iguales:
  print "<br/>Contenido de los arrays a1, a2, a3 y a4:<br/>\n";
  imprimeArray($a1);
  imprimeArray($a2);
  imprimeArray($a3);
  imprimeArray($a4);

  // agregar valores a un array --------------------------------------------

  $nums[] = 13;
  $nums[] = 9;
  
  $noms['CLI8' ] = "PEPE";
  $noms['CLI23'] = "PACO";
  $noms['CLI15'] = "JUAN";
  
  listaArray ("nums tras agregar primeros elementos",$nums);
  listaArray ("noms tras agregar primeros elementos",$noms);

  // asignar valores mediante índice numérico
  for ($i=6;$i<=10;$i++)
  {
    $nums[$i]=$i*2;
  }
  for ($i=1;$i<=5;$i++)
  {
    $nums[$i]=$i*3;
  }
  listaArray ("nums tras agregar elementos adicionales",$nums);
  
  // recorridos -----------------------------------------------------------------
  
  // recorrer con un for, a la antigua usanza
  print "<br/>Recorrer nums mediante un bucle for:<br/>";
  for ($i=3;$i<=8;$i++)
  {
    print "Elemento nº $i  de nums: $nums[$i]<br/>";
  }
  
  // recorrer valores de principio a fin
  print "<br/>Recorriendo todos los valores de nums mediante foreach:<br/>";
  foreach ($nums as $ele)
  {
    print "$ele<br/>";
  }
  print "<br/>Recorriendo todos los valores de noms mediante foreach:<br/>";
  foreach ($noms as $ele)
  {
    print "$ele<br/>";
  }
  
  // recorrer claves y valores
  print "<br/>Recorriendo todas las claves y todos los valores de nums mediante foreach:<br/>";
  foreach ($nums as $idx => $ele)
  {
    print "$idx : $ele<br/>";
  }
  print "<br/>Recorriendo todas las claves y todos los valores de noms mediante foreach:<br/>";
  foreach ($noms as $idx => $ele)
  {
    print "$idx : $ele<br/>";
  }
  
  // ordenaciones -----------------------------------------------------------------
  
  // ordenar claves
  ksort($nums);
  listaArray("nums con claves ordenadas con ksort",$nums);
  ksort($noms);
  listaArray("noms con claves ordenadas con ksort",$noms);

  krsort($nums);
  listaArray("nums con claves ordenadas descendentemente con krsort",$nums);
  krsort($noms);
  listaArray("noms con claves ordenadas descendentemente con krsort",$noms);

  // ordenar valores respetando las claves
  asort($nums);
  listaArray("nums con valores ordenados con asort",$nums);
  asort($noms);
  listaArray("noms con valores ordenados con asort",$noms);

  arsort($nums);
  listaArray("nums con valores ordenados descendentemente con arsort",$nums);
  arsort($noms);
  listaArray("noms con valores ordenados descendentemente con arsort",$noms);

  // ordenar valores renumerando las claves como índices numéricos con base en 0
  sort($nums);
  listaArray("nums con valores ordenados con sort",$nums);
  sort($noms);
  listaArray("noms con valores ordenados con sort",$noms);

  rsort($nums);
  listaArray("nums con valores ordenados descendentemente con rsort",$nums);
  rsort($noms);
  listaArray("noms con valores ordenados descendentemente con rsort",$noms);
  
  // recuento de valores -----------------------------------------------------------------
  print "<br/>Nº de elementos en el array nums = " . count($nums) . "<br/>\n";
  print "<br/>Nº de elementos en el array noms = " . count($noms) . "<br/>\n";
  print "<br/>Diferentes valores (y ocurrencias de cada una) en el array nums: ";
  var_dump(array_count_values($nums));
  print "<br/>\n";
  
  
  // búsqueda de valores -----------------------------------------------------------------
  
  // búsqueda no estricta
  $item_a_bus = 13;
  $idx = array_search($item_a_bus,$nums);
  if (!($idx===FALSE)) {
    print "<br/>Item $item_a_bus encontrado en clave $idx de nums<br/>\n";
  }
  else {
    print "<br/>Item $item_a_bus no encontrado en nums<br/>\n";
  }
  $item_a_bus = 20;
  $idx = array_search($item_a_bus,$nums);
  if (!($idx===FALSE)) {
    print "<br/>Item $item_a_bus encontrado en clave $idx de nums<br/>\n";
  }
  else {
    print "<br/>Item $item_a_bus no encontrado en nums<br/>\n";
  }
  $item_a_bus = "12";
  $idx = array_search($item_a_bus,$nums);
  if (!($idx===FALSE)) {
    print "<br/>Item \"$item_a_bus\" encontrado en clave $idx de nums<br/>\n";
  }
  else {
    print "<br/>Item \"$item_a_bus\" no encontrado en nums<br/>\n";
  }
  $item_a_bus = "PEPE";
  $idx = array_search($item_a_bus,$noms);
  if (!($idx===FALSE)) {
    print "<br/>Item $item_a_bus encontrado en clave $idx de noms<br/>\n";
  }
  else {
    print "<br/>Item $item_a_bus no encontrado en noms<br/>\n";
  }
  $item_a_bus = "pepe";
  $idx = array_search($item_a_bus,$noms);
  if (!($idx===FALSE)) {
    print "<br/>Item $item_a_bus encontrado en clave $idx de noms<br/>\n";
  }
  else {
    print "<br/>Item $item_a_bus no encontrado en noms<br/>\n";
  }
  
  // búsqueda estrica (coincidendo el tipo)
  $item_a_bus = 13;
  $idx = array_search($item_a_bus,$nums,true);
  if (!($idx===FALSE)) {
    print "<br/>Item $item_a_bus encontrado en clave $idx de nums según búsqueda estricta<br/>\n";
  }
  else {
    print "<br/>Item $item_a_bus no encontrado en nums según búsqueda estricta<br/>\n";
  }
  $item_a_bus = "12";
  $idx = array_search($item_a_bus,$nums,true);
  if (!($idx===FALSE)) {
    print "<br/>Item \"$item_a_bus\" encontrado en clave $idx de nums según búsqueda estricta<br/>\n";
  }
  else {
    print "<br/>Item \"$item_a_bus\" no encontrado en nums según búsqueda estricta<br/>\n";
  }

  // búsqueda multi-clave
  $item_a_bus = "12";
  $idx = array_keys($nums,$item_a_bus);
  print "<br/>Array resultante de la búsqueda: "; var_dump($idx); print "<br/>\n";

  $item_a_bus = "12";
  $idx = array_keys($nums,$item_a_bus,true);
  print "<br/>Array resultante de la búsqueda estricta: "; var_dump($idx); print "<br/>\n";
  

?>
