<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Inicio</title>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/play.js"></script>
<script src="js/a_seccion.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>

<body>
<div class="container">
	<?php 
		include_once("class/co.php");
		include_once("class/tabla.php");
		include_once("class/lib.php");
		
		$lib = new lib();
		
		$co = new Connection();
		$co = $co->co();
		
		$t_seccion = new Tabla($co, "seccion");
		$t_idioma = new Tabla($co, "idioma");
		$t_leccion = new Tabla($co, "leccion");
		$seccion = $t_seccion->selectFirst("cod_leccion", 1);
		$idioma = $t_idioma->select($seccion["COD_IDIOMA"]);
		$leccion = $t_leccion->select($seccion["COD_LECCION"]);
    ?>   
    <div class="row cuadro">

    	<div class="col-xs-12 titulo"><h1><?php $lib->show($leccion['TITULO']) ?></h1></div>
    	<div id="datos">
    	<div class="col-xs-6">
        	<img id="img1" src="<?php $lib->show( $seccion['IMG1']) ?>" alt="" class=" img-responsive img-thumbnail" width="200" height="300">
            <img id="img2" src="<?php $lib->show($seccion['IMG1']) ?>" alt="" class=" img-responsive img-thumbnail hidden-xs hidden-sm" width="200" height="300">
        </div>
        <div class="col-xs-6">
        	<h2><span class="label label-success"><?php $lib->show($idioma['DESCRIPCION']) ?></span></h2>
        	<h3><span id="expresion"><?php $lib->show($seccion['EXPRESION']) ?></span>
                <button class="img-circle" id="play" data="<?php $lib->show($seccion['AUDIO']) ?>">
                	<span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>
                </button>
            </h3>
            <h2><span class="label label-info">Español</span></h2>
            <h3 id="traduccion"><?php $lib->show($seccion['TRADUCCION']) ?></h3>
        </div>
        <div class="col-xs-12 control">
        	<button class="btn btn-warning right" 
            id="siguiente"
            a="<?php $lib->show($seccion['COD_SECCION']) ?>" 
            name="<?php echo "leccion"?>"
            codex="<?php $lib->show($seccion['COD_LECCION'])?>"
                >Siguiente</button>
        </div>
        </div>
    </div>
    
</div>

</body>


</html>