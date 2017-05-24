<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Inicio</title>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/play.js"></script>
<script src="js/a_seccion_formato.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body>
<?php include ("inc/menu.php");?>
<section class="portafolio">
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
		$seccion = $t_seccion->selectFirst("cod_leccion", $lib->desencriptar(str_replace(" ", "+", $_GET['l'])) );
		$idioma = $t_idioma->select($seccion["COD_IDIOMA"]);
		$leccion = $t_leccion->select($seccion["COD_LECCION"]);
    ?>   
    <div class="row cuadro">

    	<div class="col-xs-12 titulo"><?php $lib->show($leccion['TITULO']) ?></div>
    	<div id="datos">
        <?php 
			if(strlen($seccion['IMG1']) > 0){
				echo '<div class="col-xs-6 hidden-xs">
						<img id="img1" src="'.$seccion['IMG1'].'" alt="" class=" img-responsive img-thumbnail hidden-xs" width="200" height="300">
						<img id="img2" src="'.$seccion['IMG2'].'" alt="" class=" img-responsive img-thumbnail hidden-xs hidden-sm" width="200" height="300">
					</div>
					<div class="col-xs-6">';
			}else{
				echo '<div class="col-xs-12">';
			}
		?>
    	
        
        
            <div class="col-xs-12 col-md-6">
                <h2><span class="label label-success"><?php $lib->show($idioma['DESCRIPCION']) ?></span></h2>
                <h3><span id="expresion"><?php $lib->show($seccion['EXPRESION']) ?></span>
                    <button class="img-circle" id="play" data="<?php $lib->show($seccion['AUDIO']) ?>">
                        <span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>
                    </button>
                </h3>
            </div>
            <div class="col-xs-12 col-md-6">
                <h2><span class="label label-info">Español</span></h2>
                <h3 id="traduccion"><?php $lib->show($seccion['TRADUCCION']) ?></h3>
            </div>
        </div>
        </div>
        <div class="col-xs-12 control">
        	<button class="btn btn-default right" 
            id="siguiente"
            a="<?php $lib->show($seccion['COD_SECCION']) ?>" 
            name="<?php echo "leccion"?>"
            codex="<?php $lib->show($seccion['COD_LECCION'])?>"
                >Siguiente   <span class="glyphicon glyphicon-ok"></span></button>
        </div>
    </div>
    
</div>
</section>

</body>


</html>