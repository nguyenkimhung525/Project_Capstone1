<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Photo Sphere Viewer</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jss/three.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jss/photo-sphere-viewer.min.js"></script>
<style>
			html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			#container {
				width: 100%;
				height: 100%;
			}
		</style>
</head>
<body>
		<div id="container"></div>

		<script>
			var div = document.getElementById('container');
			var PSV = new PhotoSphereViewer({
					panorama: '/Project_Captone_pb2/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg',
					container: div,
					time_anim: 3000,
					navbar: true,
					navbar_style: {
						backgroundColor: 'rgba(58, 67, 77, 0.7)'
					},
				});
		</script>
	</body>

</html>
