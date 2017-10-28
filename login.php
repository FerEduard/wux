<?php
require_once("class/lib.php");
require_once("class/co.php");
require_once("class/tabla.php");

session_start();

if(isset($_SESSION['user'])){
	header("Location: index.php");
	die();
}

if(isset($_POST['user'])){
	$lib = new lib();	
	$co = new Connection();
	$co = $co->co();
	
	$t_usuario = new Tabla($co, "usuario");
	$usuario = $t_usuario->selectFirst("USUARIO",$_POST['user']);
	
	if($usuario === null){
		$mensaje = "Usuario y/o password incorrecto.";
	} else if($usuario['PASSWORD'] === $_POST['pass']){
//		$_SESSION = $usuario;
		$_SESSION['user'] = $usuario['CLAVE'];
		
		header("Location: index.php");
		die();
	} else {
		$mensaje = "Usuario y/o password incorrecto.";	
	}
}


?>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Tijonel</title>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
</head>

<body>
    <div class="demo-2">
        <div class="content">
            <div id="large-header" class="large-header">
                <canvas id="demo-canvas"></canvas>
                <div class="main-title">
               	<body class="login-img3-body">

                <div class="container">
            	<form class="login-form" method="POST" action="<?php echo $_SERVER['PHP_SELF']?>">
                      
                    <div class="login-wrap">
                        <p class="login-img"><i class="icon_lock_alt"></i></p>
                        <div class="input-group">
                          <span class="input-group-addon"><i class="icon_profile"></i></span>
                          <input type="text" class="form-control" id="user" name="user" placeholder="Usuario" autofocus>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                            <input type="password" id="pass" name="pass" class="form-control" placeholder="Contraseña">
                           
                        </div>
                        <?php 
							if(isset($mensaje)){
								echo '<div class="alert alert-danger" role="alert" style="font-size: 20px;">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>'.$mensaje.'</div>';
							}
						?>
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Ingresar</button>
                    </div>
                  </form>
            
                </div>
            
              </body>
        		</div> <!-- /titulo -->
        	</div>
    	</div><!-- /container -->
    </div>
    <script src="js/rAF.js"></script>
    <script src="js/demo-2.js"></script>
    
    
</body>
</html>