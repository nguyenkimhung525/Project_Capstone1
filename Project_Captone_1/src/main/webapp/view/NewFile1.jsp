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

<script src="https://photo-sphere-viewer.js.org/node_modules/three/examples/js/renderers/CanvasRenderer.js"></script>
<script src="https://photo-sphere-viewer.js.org/node_modules/three/examples/js/renderers/Projector.js"></script>

<style>
html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			#photosphere {
  height: 400px;
  width: 540px;
  margin: 0 auto;
}
			
</style>
</head>
<body>
	
	<div id="photosphere"></div>
	<script>
	var photosphere=document.getElementById("photosphere");
	var PSV = new PhotoSphereViewer({
	    panorama: ' /Project_Captone1/static/image/im.jpg',
	    loading_img: 'https://raw.githubusercontent.com/mistic100/Photo-Sphere-Viewer/3.1.0/example/photosphere-logo.gif',
	    navbar: 'autorotate zoom download fullscreen',
	    caption: 'Bryce Canyon National Park <b>&copy; Mark Doliner</b>',
	    default_fov: 65,
	    mousewheel: false,
	    size: {
	      height: 400
	    }
		});
		</script>
</body>

</html>
