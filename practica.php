<?php
	include_once("class/co.php");
	include_once("class/lib.php");
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Practica</title>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/a_seccion.js"></script>
<script src="js/escuchar.js"></script>
<script src="js/play2.js"></script>
<script src="js/valida.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/micro.css">
</head>

<body>
<?php include ("inc/menu.php");?>
<section class="portafolio">
<div class="container">  
    <div class="row">
    <div class="col-xs-12 col-md-8 cuadro">
		<table class="table table-hover"> 
        <thead> 
        	<tr> <th>Kakchiquel</th> <th>Español</th><th>Pronunciación</th></tr> 
        </thead> 
        <tbody> 
        <?php 
			try {
				
				$co = new Connection();
				$co = $co->co();
				$lib = new lib();
				
				$query = "SELECT COD_SECCION,EXPRESION,TRADUCCION,AUDIO FROM seccion WHERE REC != ''";
				$stmt = $co->prepare($query); 
				$stmt->execute();
			
				$result = $stmt->setFetchMode(PDO::FETCH_NUM); 
				$rows = $stmt->fetchAll();
				
				$r = count($rows);
				
				for($i = 0; $i < $r; $i++){
					if($i == 0){
						$id = $rows[$i][0];
						$title = $rows[$i][1];
					}
					
					$comp = "<tr data= '".$rows[$i][0]."'> <td>".$rows[$i][1]."</td> <td>".$rows[$i][2]."</td> 
					
					<td><button class='img-circle play' id='play' data='".$rows[$i][3]."'>
						<span class='glyphicon glyphicon-volume-up' aria-hidden='true'></span>
					</button></td> 
					</tr> ";
					echo $comp;
				}
				
			}
			catch(PDOException $e) {
				echo '<div class="alert alert-danger" role="alert">Oh! Parece que hay un problema</div>';
			}
		?>
        </tbody> 
        </table>
    </div>
    <div class="col-xs-12 col-md-4 cuadro">
    	<h3 class="text-center" id="rec-titulo" data='<?php $lib->show($id) ?>'><?php $lib->show($title) ?></h3>
   		<div class="gn"><div class="mc"></div></div>
		<div id="mensaje"></div>
    </div>
	</div>
</div>
</section>

</body>
</html>