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
			#photosphere {
  height: 400px;
  width: 540px;
  margin: 0 auto;
}
			
</style>
</head>
<body>
	
	<div id="photosphere"></div>
	<script type="text/javascript">
	var photosphere=document.getElementById("photosphere");
	var PSV = new PhotoSphereViewer({
	    panorama: '/Project_Captone_pb2/static/image/360.jpg',
	    navbar: 'autorotate zoom download fullscreen',
	    caption: 'Bryce Canyon National Park <b>&copy; Mark Doliner</b>',
	    default_fov: 65,
	    mousewheel: false
		});
		</script>
</body>

</html>
