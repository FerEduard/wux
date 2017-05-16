<?php 
class lib{
	public function show($value){
		if(!isset($value)){
			echo "";
		}elseif($value != null){
			echo $value;
		}
	}
}
?>