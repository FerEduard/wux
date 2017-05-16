<?php
	header("Content-Type: text/html;charset=utf-8");
	include_once ("../class/co.php");
	include_once ("../class/tabla.php");
	include_once ("../class/lib.php");

	$co = new Connection();
	$co = $co->co();
	$value = array();
	
	$t_seccion = new Tabla($co, "seccion");
	$t_idioma = new Tabla($co, "idioma");
	$t_leccion = new Tabla($co, "leccion");
	$seccion = $t_seccion->selectNext("cod_".$_POST['t'], $_POST['c'], $_POST['a']);
	//$seccion = $t_seccion->selectNext("cod_leccion", 1, 1);
	
	if($seccion != null){
		
		header('Content-type: application/json; charset=utf-8');
		$seccion['next'] = "si";
		echo json_encode($seccion);
	}else{
		$seccion['next'] = "no";
		
		header('Content-type: application/json; charset=utf-8');
		echo json_encode($seccion);
	}
	exit();

?>