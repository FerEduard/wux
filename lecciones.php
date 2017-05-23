<?php
	include_once("class/co.php");
	include_once("class/lib.php");
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Lecciones</title>
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
<?php include ("inc/menu.php");?>
<section class="portafolio">
<div class="container">  
    <div class="cuadro-padding">

        <div class="row">
        
        <?php 
			try {
				
				$co = new Connection();
				$co = $co->co();
				$lib = new lib();
				
				$query = "select COD_LECCION, TITULO from leccion where cod_modulo = ".$lib->desencriptar(str_replace(" ", "+", $_GET['l']));
				$stmt = $co->prepare($query); 
				$stmt->execute();
			
				$result = $stmt->setFetchMode(PDO::FETCH_NUM); 
				$rows = $stmt->fetchAll();
				
				$r = count($rows);
				
				for($i = 0; $i < $r; $i++){
					$comp = '<a href="leccion.php?l='.$lib->encriptar($rows[$i][0]).'"><div class="col-xs-12 col-md-3"><h3 class="text-center detail">'.$rows[$i][1].'</h3></div></a>';
					echo $comp;
				}
				
			}
			catch(PDOException $e) {
				echo '<div class="alert alert-danger" role="alert">Oh! Parece que hay un problema</div>';
			}
		?>
        
        </div>
	</div>
    
</div>
</section>

</body>