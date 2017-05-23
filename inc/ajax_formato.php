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
	
	$html_img = '<div class="col-xs-6">
				<img id="img1" src="'.$seccion['IMG1'].'" alt="" class=" img-responsive img-thumbnail" width="200" height="300">
				<img id="img2" src="'.$seccion['IMG2'].'" alt="" class=" img-responsive img-thumbnail hidden-xs hidden-sm" width="200" height="300">
			</div>
			<div class="col-xs-6">';
			
	$html_lg = '<div class="col-xs-12">';
	
	if(strlen($seccion['IMG1']) > 0){
		$html_if = $html_img;
	} else{
		$html_if = $html_lg;
	}
	
	$html = '<div class="col-xs-12 titulo">'.$leccion['TITULO'].'</div>
		<div id="datos">
		'.$html_if.'
			<h2><span class="label label-success">'.$idioma['DESCRIPCION'].'</span></h2>
			<h3><span id="expresion">'.$seccion['EXPRESION'].'</span>
				<button class="img-circle" id="play" data="'.$seccion['AUDIO'].'">
					<span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>
				</button>
			</h3>
			<h2><span class="label label-info">Español</span></h2>
			<h3 id="traduccion">'.$seccion['TRADUCCION'].'</h3>
		</div>
		</div>
		<div class="col-xs-12 control">
			<button class="btn btn-default right" 
			id="siguiente"
			a="'.$seccion['COD_SECCION'].'" 
			name="leccion"
			codex="'.$seccion['COD_LECCION'].'"
				>Siguiente   <span class="glyphicon glyphicon-ok"></span></button>
		</div>';

	
	echo $html;
	exit();
?>