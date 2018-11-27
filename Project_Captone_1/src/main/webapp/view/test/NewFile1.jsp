<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Photo Sphere Viewer</title>
<meta name="viewport" content="initial-scale=1.0" />
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/three.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/uevent.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/doT.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/D.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/photo-sphere-viewer.min.js"></script>
<style>
html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}

</style>
</head>
<body>
<video id="video" autoplay>
    <source src="/720p.mp4" type="video/mp4">
</video>
<input id="vol-control" type="range" min="0" max="100" step="1" oninput="SetVolume(this.value)" onchange="SetVolume(this.value)"></input>
<script>
    function SetVolume(val)
    {
        var player = document.getElementById('video');
        console.log('Before: ' + player.volume);
        player.volume = val / 100;
        console.log('After: ' + player.volume);
    }
</script>
</body>
</html>
