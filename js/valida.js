$(document).ready(function(){
	
	if(annyang){
		annyang.addCallback('result', function(phrases) {
			$('#mensaje').text('');
		  	array = {'id' : $("#rec-titulo").attr('data')};

			$.each(phrases, function(key, value){
			 	array['p' + key] = value;
			});
		  
		  	annyang.debug();
		  	equals(array);
			abort();
		});
	}
	
	$('body').on('click','.gn',function(){
		$('#mensaje').text('');
		start();
		//setTimeout(function(){ abort(); }, 4000);
	});
	
	$('body').on('click','tr',function(){
		$('#mensaje').text('');
		$("#rec-titulo").text($(this).find("td:first").text());
		$("#rec-titulo").attr('data',$(this).attr('data'));
	});
	
	
	function start(){
		if(annyang){
			$('.gn').css("background-color", "#E50D11");
			annyang.setLanguage('es-GT');
			//annyang.debug();
			annyang.start({continuous: false});	
			
		}
	}
	
	function abort(){
		if(annyang){
			annyang.abort();	
			$('.gn').css("background-color", "#1DC7F3"); 
		}
	}
	
	function equals(array){
		$.ajax({
			data: array,
			type: "POST",
			dataType: "json",
			url: "class/rec.php",
		})
		 .done(function( data, textStatus, jqXHR ) {
			 
			 if(data.mensaje == 'si'){ 
			 	$("#mensaje").html('<div class="alert alert-success alert-dismissible" role="alert">         <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>         <span class="glyphicon glyphicon-ok" aria-hidden="true"></span><strong>  Excelente</strong>. </div>');
			 }else{ 
			 	$("#mensaje").html('<div class="alert alert-danger alert-dismissible" role="alert">         <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>         <span class="glyphicon glyphicon-remove" aria-hidden="true"></span><strong>No lo has pronunciado bien</strong>, vuelve a intentarlo. </div>');
			 }
			 
			
		 }).fail(function( jqXHR, textStatus, errorThrown ) {
			 if ( console && console.log ) {
				 console.log( "La solicitud a fallado: " +  textStatus);
			 }
		});
		
	}
	
});