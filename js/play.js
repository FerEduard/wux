$(document).ready(function(){
	$("#play").click(function(){
		playSound("audio/" + $("#play").attr("data"));
	});
	
	function playSound(url){
	  var audio = document.createElement('audio');
	  audio.src = url;
	  audio.onended = function(){
		audio.remove();
	  };
	  audio.play();
	}
});