<?php
	include_once ("../class/co.php");
	include_once ("../class/tabla.php");
	include_once ("../class/lib.php");
	$co = new Connection();
	$co = $co->co();
	$value = array();
	$html = '';
	$t_seccion = new Tabla($co, "seccion");
	$t_idioma = new Tabla($co, "idioma");
	$t_leccion = new Tabla($co, "leccion");
	$seccion = $t_seccion->selectNext("cod_".$_POST['t'], $_POST['c'], $_POST['a']);



	
	if($seccion != null){
		$idioma = $t_idioma->select($seccion["COD_IDIOMA"]);
		$leccion = $t_leccion->select($seccion["COD_LECCION"]);
		$button = '';
		$html_img = '<div class="col-xs-6 hidden-xs">
					<img id="img1" src="'.$seccion['IMG1'].'" alt="" class=" img-responsive img-thumbnail hidden-xs" width="200" height="300">
					<img id="img2" src="'.$seccion['IMG2'].'" alt="" class=" img-responsive img-thumbnail hidden-xs hidden-sm" width="200" height="300">
				</div>
				<div class="col-xs-6">';
				
		$html_lg = '<div class="col-xs-12">';
		
		if(strlen($seccion['IMG1']) > 0){
			$html_if = $html_img;
		} else{
			$html_if = $html_lg;
		}
		
		if(strlen($seccion['AUDIO']) >0){
			$button = '<button class="img-circle" id="play" data="'.$seccion['AUDIO'].'">
			<span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>
		</button>';
		}
		
		$html = $html_if.'
			<div class="col-xs-12 col-md-6">
				<h2><span class="label label-success">'.$idioma['DESCRIPCION'].'</span></h2>
				<h3><span id="expresion">'.$seccion['EXPRESION'].'</span>
					'.$button.'
				</h3>
			</div>
			<div class="col-xs-12 col-md-6">
				<h2><span class="label label-info">Español</span></h2>
				<h3 id="traduccion">'.$seccion['TRADUCCION'].'</h3>
			</div>
			</div>';
		
		header('Content-type: application/json; charset=utf-8');
		$data['next'] = "si";
		$data['html'] = $html;
		$data['a'] = $seccion['COD_SECCION'];
		echo json_encode($data);
	}else{
		$data['next'] = "no";
		
		header('Content-type: application/json; charset=utf-8');
		echo json_encode($data);
	}
	
	exit();
?>