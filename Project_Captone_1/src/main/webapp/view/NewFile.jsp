<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Photo Sphere Viewer</title>
<meta name="viewport" content="initial-scale=1.0" />
<script src="/static/js/three.min.js"
	type="text/javascript"></script>
<script type="/static/js/photo-sphere-viewer.min.js"></script>
<script type="/static/js/doT.min.js"></script>
<script type="/static/js/uevent.min.js"></script>

<style>
html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			#photosphere {
				width: 100%;
				height: 100%;
			}
</style>
</head>

<body>
	<div id="photosphere"></div>
	<script>
	var photosphere=document.getElementById("photosphere");
	var PSV = new PhotoSphereViewer({
	    panorama: 'https://cdn.rawgit.com/mistic100/Photo-Sphere-Viewer/3.1.0/example/Bryce-Canyon-National-Park-Mark-Doliner.jpg',
	    container: 'photosphere',
	    navbar: 'autorotate zoom download fullscreen',
	    caption: 'Bryce Canyon National Park <b>&copy; Mark Doliner</b>',
	    default_fov: 65,
	    mousewheel: false,
	  });
	
		</script>
</body>

</html>
