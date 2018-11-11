<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Photo Sphere Viewer</title>
<link href="${pageContext.request.contextPath}/static/css/photo-sphere-viewer.min.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/three.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/D.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/doT.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/uevent.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/photo-sphere-viewer.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/css/photo-sphere-viewer.min.css" type="text/css" rel="stylesheet">

<style>
			html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			#photosphere {
				width: 500px;
				height: 300px;
			}
			#photosphere1{
				width: 500px;
				height: 300px;
			}
		</style>
</head>
<body>
<div class="content">
	 <div class="col-md-6" role="main">
        <section class="bs-docs-section">
			<div id="photosphere"></div>
		</section>
	  </div>
	<div class="col-md-6" role="main">
        <section class="bs-docs-section">
			<div id="photosphere1"></div>
		</section>
	  </div>
</div>      

		<script>
		var div = document.getElementById('photosphere');
		var PSV = new PhotoSphereViewer({
				panorama: '/Project_Captone_pb2/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg',
				container: div,
				time_anim: 3000,
				navbar: true,
				navbar_style: {
					backgroundColor: 'rgba(58, 67, 77, 0.7)'
				}
			});
			var div1 = document.getElementById('photosphere1');
			var PSV = new PhotoSphereViewer({
				panorama: '/Project_Captone_pb2/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg',
				container: div1,
				navbar: true,
				navbar_style: {
					backgroundColor: 'rgba(58, 67, 77, 0.7)'
				}
			});
		</script>
	</body>

</html>
