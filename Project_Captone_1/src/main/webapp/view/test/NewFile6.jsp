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

<div style="height:16px;width:300px; border: 1px solid red;position: relative;">
<div style="right:204px;width: 32%;height: 100%;border: 1px solid yellow;position: absolute;overflow: hidden;">
	<audio style="margin-left:-202px ;height: 16px;width: 300px;background:gray;opacity: 0.7;" id="myAudio" controls autoplay>
  		<source src="${pageContext.request.contextPath}/static/audio/tainhac.MP3" type="audio/mpeg">
 		 Your browser does not support the audio element.
	</audio>
</div>
</div>

<input id="vol-control" type="range" min="0" max="100" step="1"></input>
<p>Click the buttons to play or pause the audio.</p>

<button onclick="pauseAudio()" type="button">Pause Audio</button> 
<button onclick="document.getElementById('myAudio').play()">Play</button>
<script>


function pauseAudio() { 
    x.pause(); 
} 
var x = document.getElementById("myAudio"); 
var audio = document.getElementById("myAudio");
audio.volume = 0.00;
var interval_obj=setInterval(function(){
	audio.volume=audio.volume+0.01
	if(audio.volume==0.17)clearInterval(interval_obj);
	}, 1000);
</script>
</body>
</html>