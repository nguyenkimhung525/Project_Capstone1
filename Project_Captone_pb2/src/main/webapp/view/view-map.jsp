<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
    <%@taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/viewmap.css">
  </head>
  <body>
    <div id="map"></div>
   <script type="text/javascript">
   var currentInfoWindow = null;
   var infoWindow;
   		var contentString='<div class="content">'+
   			'<h2>Đà Nẵng - Phố Cổ Hội An</h2>'+
   			'<p>Đà Nẵng có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà...</p>'+
   			'<div class="ct image">'+
	   			'<my:handler-image var="images" lng="${locations.value}">'+'</my:handler-image>'+
				'<c:forEach items="${images}" var="images">'+
					'<img alt="" src="${pageContext.request.contextPath}/static/image_viewmap/${images.image}">'+
				'</c:forEach>'+
   			'</div>'+
   			'<div class="ct view">'+
   				'<a href="view/View360.jsp"><img alt="" src="${pageContext.request.contextPath}/static/image/view360do.PNG"><i>Chế độ hình ảnh<br/> view 360°</i>'+
   			'</div>'+
   		'</div>';
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
	     			coords:{lat:${locations.key},lng:${locations.value}},
	            	content:contentString
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
        		 infoWindow = new google.maps.InfoWindow({
        	        	content:props.content
        	     });
        		 
        	}
        	 marker.addListener('click',function(){
              	toggleBounce(marker);
              	if(currentInfoWindow!=null){
              		infoWindow.close();
              	}
              	currentInfoWindow=infoWindow;
             	infoWindow.open(map,marker);
             	
             });
        	 google.maps.event.addListener(map, 'click', function() {
 				infoWindow.close();
 			});
		}
      }
      
      
      function toggleBounce(marker) {
            marker.setAnimation(google.maps.Animation.BOUNCE);
            setTimeout(function () { marker.setAnimation(null); }, 2000);
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0wHp_SwTgju3i7igqDRhZtr34Ca-M6mk&callback=initMap"
    async defer></script>
  </body>
</html>