<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div id="map" style="width: 400px; height: 500px;"></div>

  <script type="text/javascript">
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 4,
      center: new google.maps.LatLng(-25.36388, 131.04492),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var marker = new google.maps.Marker({
      position: map.getCenter(),
      map: map
    });

    var infowindow = new google.maps.InfoWindow({
      content: 'An InfoWindow'
    });

    infowindow.open(map, marker);

    setTimeout(function () { infowindow.close(); }, 5000);
  </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0wHp_SwTgju3i7igqDRhZtr34Ca-M6mk&callback=initMap">
    </script>
</body>
</html>