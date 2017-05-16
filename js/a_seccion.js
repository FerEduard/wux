$(document).ready(function(){
    $("#siguiente").click(function(){	
	
		var parametros = {
                "a" : $("#siguiente").attr("a"),
                "t" : $("#siguiente").attr("name"),
				"c" : $("#siguiente").attr("codex")
        };
		
        $.ajax({
			data: parametros,
			type: "POST",
			dataType: "json",
			url: "inc/ajax_seccion.php",
		})
		 .done(function( data, textStatus, jqXHR ) {
			 if ( data.next == 'si') {
				 $("#expresion").html(data.EXPRESION);
				 $("#traduccion").html(data.TRADUCCION);
				 $("#siguiente").attr("a", data.COD_SECCION);
				 $("#img1").attr("src", data.IMG1);
				 $("#img2").attr("src", data.IMG2);
				 $("#play").attr("data", data.AUDIO);
			 }else{
			 	window.location.href="mensaje.php";
			 }
		 })
		 .fail(function( jqXHR, textStatus, errorThrown ) {
			 if ( console && console.log ) {
				 console.log( "La solicitud a fallado: " +  textStatus);
			 }
		});
    });
});