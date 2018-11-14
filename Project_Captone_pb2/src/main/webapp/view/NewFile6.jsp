<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	#myAudio{
	}
</style>
</head>
<body>

<audio id="myAudio" controls autoplay>
  <source src="${pageContext.request.contextPath}/static/audio/tainhac.MP3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>
<input id="vol-control" type="range" min="0" max="100" step="1"></input>
<p>Click the buttons to play or pause the audio.</p>

<button onclick="pauseAudio()" type="button">Pause Audio</button> 

<script>
var x = document.getElementById("myAudio"); 


function pauseAudio() { 
    x.pause(); 
} 
var volu3 = document.getElementById('vol-control');
var audio = document.getElementById("myAudio");
audio.volume = 0.00;
var interval_obj=setInterval(function(){
	audio.volume=audio.volume+0.01
	if(audio.volume==0.17)clearInterval(interval_obj);
	}, 1000);
</script>
</body>
</html>