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
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body>
<?php include ("inc/menu.php");
	include_once("class/lib.php");
	$lib = new lib();
?>
<section class="portafolio">
<div class="container">  
    <div class="row cuadro">
		<div class="col-xs-12">
        	<div class="row">
            	<div class="col-md-4 hidden-xs"></div>
            	<div class="col-xs-12 col-md-4">
                <a href="lecciones.php?l=<?php echo $lib->encriptar("1"); ?>">
                    <img src="icons/pintura.png"  height="200px" width="200px" class="img-responsive center-block"  alt="colores">
                    <h3 class="text-center">Colores</h3>
                </a>
                </div>
                <div class="col-md-4 hidden-xs"></div>
             </div>
                <!--Inicio Fila -->
                <div class="row">
                <div class="col-md-2 hidden-xs"></div>
                <div class="col-xs-12 col-md-4">
                	<a href="lecciones.php?l=<?php echo $lib->encriptar("2"); ?>">
                    <img src="icons/numeros.png"  height="200px" width="200px" class="img-responsive center-block"  alt="números">
                    <h3 class="text-center">Números</h3>
                    </a>
                </div>
                <div class="col-xs-12 col-md-4">
                <a href="lecciones.php?l=<?php echo $lib->encriptar("3"); ?>">
                    <img src="icons/gente.png"  height="200px" width="200px" class="img-responsive center-block"  alt="personas">
                    <h3 class="text-center">Personas</h3>
              	</a>
                </div>
                <div class="col-md-2 hidden-xs"></div>
                </div>
                 <!--Fin Fila -->
                
                <!--Inicio Fila -->
                <div class="row">
                <div class="col-md-2 hidden-xs"></div>
                <div class="col-xs-12 col-md-4">
                	<a href="lecciones.php?l=<?php echo $lib->encriptar("4"); ?>">
                    <img src="icons/animal.png" height="200px" width="200px" class="img-responsive center-block"  alt="animales">
                    <h3 class="text-center">Animales</h3>
                    </a>
                </div>
                <div class="col-xs-12 col-md-4">
                	<a href="lecciones.php?l=<?php echo $lib->encriptar("5"); ?>">
                    <img src="icons/reloj.png"  height="200px" width="200px" class="img-responsive center-block"  alt="tiempo">
                    <h3 class="text-center">Tiempo</h3>
                    </a>
                </div>
                <div class="col-md-2 hidden-xs"></div>
                </div>
               <!--Fin Fila -->
               
               <!--Inicio Fila -->
                <div class="row">
                <div class="col-md-2 hidden-xs"></div>
                <div class="col-xs-12 col-md-4">
                	<a href="lecciones.php?l=<?php echo $lib->encriptar("6"); ?>">
                    <img src="icons/numeros.png"  height="200px" width="200px" class="img-responsive center-block"  alt="números">
                    <h3 class="text-center">Números 2</h3>
                    </a>
                </div>
                <div class="col-xs-12 col-md-4">
                	<a href="lecciones.php?l=<?php echo $lib->encriptar("7"); ?>">
                    <img src="icons/ocupacion.png"  height="200px" width="200px" class="img-responsive center-block"  alt="ocupaciones">
                    <h3 class="text-center">Ocupaciones</h3>
                    </a>
                </div>
                <div class="col-md-2 hidden-xs"></div>
                </div>
               <!--Fin Fila -->
                
            </div>
        </div>

	</div>
    
</div>
</section>

</body>


</html>