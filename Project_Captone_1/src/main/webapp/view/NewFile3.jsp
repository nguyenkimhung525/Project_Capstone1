<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.2.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/Projector.js" type="text/javascript"></script>
  

<style>
			html, body {
				margin: 0;
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			html, body .content{
				width: 100%;
				height: 100%;
				position: relative;
				margin: auto;
				border: 1px solid transparent;			
			}
			.content .imageview{
				height: 100%;
				width: 100%;
				position: absolute;
				z-index: 0;
			}
			.content .imageview .section{
			 visibility: hidden;
				height: 100%;
				width: 100%;
				position: absolute;
			}
		
			.content .imageview .section #photosphere {
				width: 100%;
				height: 100%;
			}
			.content .imageview .section #photosphere1{
				width: 100%;
				height: 100%;
				 
			}
			img{
				width: 100px;
				height: 50px;
			}
			.div{
				background: rgba(58, 68, 84, 0.8);
				height: 42px;
				width: 42px;
				border-radius: 50%;
				position: relative;
				border: 1px solid red; 
			}
			.div .image{
				position: absolute;
				height: 86%;
				width: 86%;
				left: 3px;
				top:3px;
			}
			#id{
				border: 1px solid transparent;
				height: 300px;
				width: 400px;
				z-index: 10; 
				display: none;
			}
			.fade{
				animation-name:fade;
				animation-duration:1.5s;
			}
			
			@keyframes fade{
				from {opacity: 0.6;}
				to {opacity: 2;}
			}
		</style>
</head>
<body>
<div class="content" id="clickim">
	<div class="imageview">
        <div class="section fade" >
			<div id="photosphere"></div>
		</div>
        <div class="section fade">
			<div id="photosphere1"></div>
		</div>
	</div>
</div>
		<script type="text/javascript">
		var div = document.getElementById('photosphere');
		var PSvvvvV = new PhotoSphereViewer({
		    panorama: '/Project_Captone_pb2/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg',
		    container: div,
		    navbar: 'autorotate zoom fullscreen caption',
		    default_fov: 65,
		    time_anim:true,
		    mousewheel: false,
		    mousemove:true,
		    anim_speed:'0.3rpm',
		    transition: {
		        duration: 1500, // duration of transition in milliseconds
		        loader: true // should display the loader ?
		    },
		    markers:[{
			      id: 'text',
			      longitude: 0,
			      latitude: 0,
			      html: '<a onclick="setTimeout(plusSlides(1),3000);">Click&#10095;</a>',
			      anchor: 'bottom right',
			      scale: [0.5, 1.5],
			      style: {
			        maxWidth: '100px',
			        color: 'white',
			        fontSize: '15px',
			        fontFamily: 'Helvetica, sans-serif',
			        textAlign: 'center'
			      },
			      tooltip: {
			        content: 'Thắng cảnh này nằm trên núi Chúa, ở độ cao 1.489 m so với mực nước biển, cách trung tâm thành phố khoảng 25 km, thuộc địa phận xã Hòa Ninh, Hòa Vang, Đà Nẵng',
			        position: 'right'
			      }
			    },
			    {
				      id: 'title',
				      longitude: 0,
				      latitude: 0.2,
				      html: '<div class="div" onmouseenter="dung(this)" onmouseleave=chay(this) ><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
				      anchor: 'bottom right',
				      scale: [0.5, 1.5],
				      style: {
				        color: 'white',
				        fontSize: '25px',
				        fontFamily: 'Helvetica, sans-serif'
				      },
				      tooltip: {
				        content: 'Thắng cảnh này nằm trên núi Chúa, ở độ cao 1.489 m so với mực nước biển, cách trung tâm thành phố khoảng 25 km, thuộc địa phận xã Hòa Ninh, Hòa Vang, Đà Nẵng',
				        position: 'right'
				      }
				      }]
		  });
		var a=0;
		var b=0;
		function dung(x) {
			 a=1;
			 b=0;
			console.log(a);
			console.log(b);
			PSvvvvV.stopAutorotate();
		};
		function chay(x) {
			 b=2;
			 a=0;
				console.log(a);
			PSvvvvV.startAutorotate();
		};
		PSvvvvV.on('click', function(e) {
			setTimeout(function(){
				PSvvvvV.startAutorotate();
			}, 3000);
		});
				var url='';
				var div1 = document.getElementById('photosphere1');
		var PSV = new PhotoSphereViewer({
		    panorama: '/Project_Captone_pb2/static/image/30868805938_8b65d6ab7e_k.jpg',
		    container: div1,
		    navbar: 'autorotate zoom fullscreen caption',
		    caption: 'Bryce Canyon National Park <b>&copyr</b>',
		    default_fov: 65,
		    time_anim:true,
		    mousewheel: false,
		    mousemove:true,
		    anim_speed:'0.3rpm',
		    markers:[{
			      id: 'text',
			      longitude: 0,
			      latitude: 0,
			      html: '<a onclick="setTimeout(plusSlides(-1), 3000)">Click&#10095;</a>',
			      anchor: 'bottom right',
			      scale: [0.5, 1.5],
			      style: {
			        maxWidth: '100px',
			        color: 'white',
			        fontSize: '15px',
			        fontFamily: 'Helvetica, sans-serif',
			        textAlign: 'center'
			      },
			      tooltip: {
			        content: 'Thắng cảnh này nằm trên núi Chúa, ở độ cao 1.489 m so với mực nước biển, cách trung tâm thành phố khoảng 25 km, thuộc địa phận xã Hòa Ninh, Hòa Vang, Đà Nẵng',
			        position: 'right'
			      }
			    },
			    {
				      id: 'title',
				      longitude: 0,
				      latitude: 0.2,
				      html: '<div class="div"><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
				      anchor: 'bottom right',
				      scale: [0.5, 1.5],
				      style: {
				        color: 'white',
				        fontSize: '25px',
				        fontFamily: 'Helvetica, sans-serif'
				      },
				      tooltip: {
				        content: 'Thắng cảnh này nằm trên núi Chúa, ở độ cao 1.489 m so với mực nước biển, cách trung tâm thành phố khoảng 25 km, thuộc địa phận xã Hòa Ninh, Hòa Vang, Đà Nẵng',
				        position: 'right'
				      }
				      }]
		  });
		PSV.on('autorotate', function(e) {
			if(e==false){
				setTimeout(function(){
					PSV.startAutorotate()
				}, 3000);
			}
		});
			/**
			 * Delete a generated marker when the user clicks on it
			 */

			
		</script>
		 <script type="text/javascript">
		var index=1;	
		var str="hidden";
			var width = 0;
		function plusSlides(n) {
	           showimage(index+=n);
	           width=0;
	           if(n==-1){
	   			PSvvvvV.startAutorotate();

	           }
	           if(n==1)PSV.startAutorotate();
		}
		function showimage(n) {
			 var i;
	           var slides =document.querySelectorAll('.section');
	        //   var dots=document.querySelectorAll('.dots');
	           if(n>slides.length){index=1;}
	            console.log(slides.length);
	           if(n<1){index=slides.length;}
	           for (i=0;i<slides.length;i++) {
	              slides[i].style.visibility='hidden';
	           }
	          /*  for ( i = 0; i < dots.length; i++) {
	                dots[i].className = dots[i].className.replace(" active","");
	            } */
	            
	 	  		   slides[index-1].style.visibility = 'visible';		     
		}
		showimage(index);
		</script>
	</body>
</html>
