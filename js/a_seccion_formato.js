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
			url: "inc/ajax_formato.php"
		})
		 .done(function( data, textStatus, jqXHR ) {
			 $(".cuadro").html(data);
		 })
		 .fail(function( jqXHR, textStatus, errorThrown ) {
			 if ( console && console.log ) {
				 console.log( "La solicitud a fallado: " +  textStatus);
			 }
		});
    });
});