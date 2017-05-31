$(document).ready(function(){
	$('body').on('click','.play',function(){
		playSound("audio/" + $(this).attr("data"));
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
