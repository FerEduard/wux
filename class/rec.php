<?php
include_once ("lib.php");
include_once ("co.php");

	function reconocer($id, $comprobar){
		try {
				
				$co = new Connection();
				$co = $co->co();
				$lib = new lib();
				
				$query = "SELECT COD_SECCION,EXPRESION,TRADUCCION FROM seccion 
				WHERE COD_SECCION = ".$id."  
					AND REC LIKE '%&".$comprobar."&%' 
				LIMIT 20";
				$stmt = $co->prepare($query); 
				$stmt->execute();
			
				$result = $stmt->setFetchMode(PDO::FETCH_NUM); 
				$rows = $stmt->fetchAll();
				
				return !empty($rows);
			}
			catch(PDOException $e) {
				return false;
			}
	}
	
	if(isset($_POST['id'])){
		$id = $_POST['id'];
		unset($_POST['id']);
		
		foreach ($_POST as $clave => $valor) {
			if(reconocer($id, $valor)){
				$data['mensaje'] = 'si';
				break;
			}
		}
	}
	
	if(!isset($data['mensaje'])){
		$data['mensaje'] = 'no';
	}
	

	header('Content-type: application/json; charset=utf-8');
	echo json_encode($data);
?>