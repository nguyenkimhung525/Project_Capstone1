<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
   <script type="text/javascript">
      function initMap() {
        var options= {
        	zoom: 12,
        	center: {lat: ${local.lat_number}, lng: ${local.lng_number}}
        }
        var map = new google.maps.Map(document.getElementById('map'),options);
        
        //add maker
       /*  var marker=new google.maps.Marker({
        	position:{lat:16.066951,lng: 108.160871},
        	map:map,
        	title: 'Hello World!'
        });
        var  infoWindow = new google.maps.InfoWindow({
        	content:'<a href="View.jsp"> Link</a>'
        });
        
        marker.addListener('click',function(){
        	infoWindow.open(map,marker);
        }); */
        //Array marker;
       /*  var markers=[
	        	{
	        		coords:{lat:16.047079,lng: 108.206230},
        			content:'<h1>Hello World</h1>'	
        			
	        	},
	        	{
	        		coords:{lat:16.06695,lng: 108.160871},
	        		content:'<a href="View.jsp"> Link</a>'
	        	},
	        	{
	        		coords:{lat:16.069079,lng: 108.167883}
	        	}
        	];?*/
        //sng dung java;
       	var markers=[
	   	 	<c:forEach items="${locations}" var="locations" varStatus="status">
	     		{
	     			coords:{lat:${locations.lat_number},lng:${locations.lng_number}},
	            	content:'<a id ="content" href="view/NewFile.jsp">View 360</a>'
	     		}<c:if test="${!status.last}">,</c:if>
	    	</c:forEach>
       	];
        
        
        for (var i = 0; i < markers.length; i++) {
        	addMarker(markers[i]);
		} 
        //Add marker function
        /* addMarker({coords:{lat:16.047079,lng: 108.206230},
        			content:'<h1>Hello World</h1>'});
        addMarker({coords:{lat:16.06695,lng: 108.160871},
			content:'<h1>Hello World</h1>'});
        
        addMarker({coords:{lat:16.069079,lng: 108.167883}});
         */
        function addMarker(props) {
        	var marker=new google.maps.Marker({
				position:props.coords,
				map:map
			});
        	if(props.content){
        		 var infoWindow = new google.maps.InfoWindow({
        	        	content:props.content
        	     });
        	}
        	 marker.addListener('click',function(){
             	infoWindow.open(map,marker);
             });
		}
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0wHp_SwTgju3i7igqDRhZtr34Ca-M6mk&callback=initMap"
    async defer></script>
  </body>
</html>