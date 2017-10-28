<?php
session_start();

if(!isset($_SESSION['user'])){
	header("Location: login.php");
	die();
}

?>    
    
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="glyphicon glyphicon-menu-hamburger"></span> Menu<i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.php">Tijonel</a>
            </div>
			<div class="navbar-header page-scroll">
                <span class="label label-warning">
                	<?php echo $_SESSION['user'] ?>
                </span>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a href="index.php">Inicio</a>
                    </li>
                    <li>
                        <a href="practica.php">Practica</a>
                    </li>
                    <li>
                        <a href="info.php">Informacion</a>
                    </li>
                    <li>
                        <a href="inc/cerraSession.php">Salir</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>