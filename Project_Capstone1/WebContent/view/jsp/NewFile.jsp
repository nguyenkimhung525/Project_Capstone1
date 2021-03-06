<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	#map{
		width: 100%;
		height: 400px;
	}
</style>
</head>
<body>
	 <h3>My Google Maps Demo</h3>
    <!--The div element for the map -->
    <div id="map"></div>
	<script type="text/javascript">
	function initMap() {
		  // The location of Uluru
		  var uluru = {lat: -25.344, lng: 131.036};
		  // The map, centered at Uluru
		  var map = new google.maps.Map(
		      document.getElementById('map'), {zoom: 8, center: uluru});
		  // The marker, positioned at Uluru
		  var marker = new google.maps.Marker({position: uluru, map: map});
		}
	</script>
	 <script async defer
    	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAoSgD1qqvHoM4mOq-1_eEYb8qtiHsll3o&callback=initMap">
    </script>
</body>
</html>