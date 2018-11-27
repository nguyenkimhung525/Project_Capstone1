<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="content-view" id="clickim">
		<div class="imageview">
			<div class="section el1">
				<div id="photosphere"></div>
			</div>
			<div class="section el2">
				<div id="photosphere1"></div>
			</div>
			<div class="section el3">
				<div id="photosphere2"></div>
			</div>
		</div>
		<div class="navigation">
			<div class="nv-row-1">
				<img class="img-row1" alt="1"
					src="/Project_Captone_1/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg">
				<div class="nv-row1-ct">1</div>
			</div>
			<div class="nv-row-2">
				<img alt="2" class="img-row2"
					src="/Project_Captone_1/static/image/30868805938_8b65d6ab7e_k.jpg">
				<div class="nv-row1-ct">2</div>
			</div>
			<div class="nv-row-3">
				<img alt="3" class="img-row3"
					src="/Project_Captone_1/static/image/360-Grad-Fotos-Finanzministerium-4-von-9.jpg">
				<div class="nv-row1-ct">3</div>
			</div>
		</div>
		<div class="audio">
			<div class="contain-audio">
				<div class="edit-audio">
					<audio id="myAudio" controls autoplay>
						<source
							src="${pageContext.request.contextPath}/static/audio/tainhac.MP3"
							type="audio/mpeg">
						Your browser does not support the audio element.
					</audio>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var div = document.getElementById('photosphere');
		var PSvvvvV = new PhotoSphereViewer({
		    panorama: '/Project_Captone_1/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg',
		    container: div,
		    navbar: [
		        'autorotate',
		        'zoom',
		        'markers',
		        'caption',
		        'fullscreen'
		      ],
 		    default_fov: 80,
 		   	default_long:0,
			default_lat:0,
		    time_anim:true,
		    mousewheel: false,
		    mousemove:true,
		    anim_speed:'0.3rpm',	
		    markers:[{
			      id: 'text',
			      longitude: -0.2,
			      latitude: -0.2,
			      html: '<a id="event_click1" onmouseenter="dung(this)" onmouseleave="chay(this)" onclick="plusSlides(2);">'+
			      		 '<img class="image" src="${pageContext.request.contextPath}/static/image/link.png"/></a>',
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
				     content: '<div class="content-image"><img style="width: 135px;height:90px" src="/Project_Captone_1/static/image/30868805938_8b65d6ab7e_k.jpg"></div>',
			        position: 'top'
			      }
			    },
			    {
				      id: 'title',
				      longitude: 0,
				      latitude: 0.2,
				      html: '<div class="div" onmouseenter="dung(this)" onmouseleave="chay(this)" ><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
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
		var set;
		function dung(x) {
			 a=1;
			 b=0;
			clearTimeout(set);
			console.log(a);
			console.log(b);
			PSvvvvV.stopAutorotate();
		};
		function chay(x) {
			 b=2;
			 a=0;
			set=setTimeout(() => {
				PSvvvvV.startAutorotate();
			}, 1200);
				console.log(a);
		};
		
		
		PSvvvvV.on('click', function(e) {
			setTimeout(function(){
				PSvvvvV.startAutorotate();
			}, 3000);
		});	
		
/* 		PSvvvvV.on('dblclick', function(marker) {
			setTimeout(function(){
				PSvvvvV.startAutorotate();
			}, 3000);
			}); */
		
		
		/*  PSvvvvV.on('click', function(e) {
			PSvvvvV.animate({
				 longitude: 0,
			     latitude: 0
			},3000);
		});	  */
		var url='';
				var div1 = document.getElementById('photosphere1');
		var PSV = new PhotoSphereViewer({
		    panorama: '/Project_Captone_1/static/image/30868805938_8b65d6ab7e_k.jpg',
		    container: div1,
		    navbar: [
		        'autorotate',
		        'zoom',
		        'markers',
		        'caption',
		        'fullscreen'
		      ],
		    caption: 'Bryce Canyon National Park <b>&copyr</b>',
		    default_fov: 80,
		    time_anim:true,
		    mousewheel: false,
		    mousemove:true,
		    anim_speed:'0.3rpm',
		    markers:[{
			      	id: 'text',
			      	longitude: -0.2,
			      	latitude: -0.2,
			      	html: '<a id="event_click2" onmouseenter="dung1(this)" onmouseleave="chay1(this)" onclick="plusSlides(3);">'+
		      		 	  '<img class="image" src="${pageContext.request.contextPath}/static/image/link.png"/></a>',
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
			        content: '<div class="content-image"><img style="width: 135px;height:90px" src="/Project_Captone_1/static/image/360-Grad-Fotos-Finanzministerium-4-von-9.jpg"></div>',
			        position: 'top'
			      }
			    },
			    {
				      id: 'title',
				      longitude: 0,
				      latitude: 0.2,
				      html: '<div class="div"  onmouseenter="dung1(this)" onmouseleave=chay1(this)><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
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
		
		
		
		var set1;
		function dung1(x) {
			clearTimeout(set1);
			PSV.stopAutorotate();
		};
		function chay1(x) {
			set1=setTimeout(() => {
				PSV.startAutorotate();
			}, 1200);
				console.log(a);
		};

		PSV.on('click', function(e) {
			setTimeout(function(){
				PSV.startAutorotate();
			}, 3000);
		});
		
		
		/*------image view 360 page 3----------------*/

		
		var div2 = document.getElementById('photosphere2');
		var PSV2 = new PhotoSphereViewer({
		    panorama: '/Project_Captone_1/static/image/360-Grad-Fotos-Finanzministerium-4-von-9.jpg',
		    container: div2,
		    navbar: [
		        'autorotate',
		        'zoom',
		        'markers',
		        'caption',
		        'fullscreen'
		      ],
		    caption: 'Bryce Canyon National Park <b>&copyr</b>',
		    default_fov: 80,
		    time_anim:true,
		    mousewheel: false,
		    mousemove:true,
		    anim_speed:'0.3rpm',
		    markers:[{
			      	id: 'text',
			      	longitude:-0.2,
			      	latitude: -0.2,
			      	html: '<a id="event_click3" onmouseenter="dung2(this)" onmouseleave="chay2(this)" onclick="plusSlides(4);">'+
		      		 	  '<img class="image" src="${pageContext.request.contextPath}/static/image/link.png"/></a>',
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
			        content: '<div class="content-image"><img style="width: 135px;height:90px" src="/Project_Captone_1/static/image/https___photo-sphere-viewer.js.org_assets_Bryce-Canyon-National-Park-Mark-Doliner.jpg"></div>',
			        position: 'top'
			      }
			    },
			    {
				      id: 'title',
				      longitude: 0,
				      latitude: 0.2,
				      html: '<div class="div"  onmouseenter="dung2(this)" onmouseleave=chay2(this)><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
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
		var set2;
		function dung2(x) {
			PSV2.stopAutorotate();
			clearTimeout(set2);
		};
		function chay2(x) {
				console.log(a);
				set2=setTimeout(() => {
					PSV2.startAutorotate();
				}, 1200);
		};

		PSV2.on('click', function(e) {
			setTimeout(function(){
				PSV2.startAutorotate();
			}, 4000);
		});
			/**
			 * Delete a generated marker when the user clicks on it
			 */

			
		</script>
	<script type="text/javascript">
		var row1 = document.querySelector('.nv-row-1');
		var row2 = document.querySelector('.nv-row-2');
		var row3 = document.querySelector('.nv-row-3');
		var img_click1 = document.querySelector('.img-row1');
		var img_click2 = document.querySelector('.img-row2');
		var img_click3 = document.querySelector('.img-row3');
		var slidess = document.querySelectorAll('.section');
		img_click1.onclick = function() {
			slidess[0].style.visibility = 'visible';
			slidess[1].style.visibility = 'hidden';
			slidess[2].style.visibility = 'hidden';
			row1.style.border = '1.7px solid red';
			row2.style.border = '1px solid white';
			row3.style.border = '1px solid white';
		}
		img_click2.onclick = function() {
			row2.style.border = '1.7px solid red';
			row1.style.border = '1px solid white';
			row3.style.border = '1px solid white';
			slidess[1].style.visibility = 'visible';
			slidess[0].style.visibility = 'hidden';
			slidess[2].style.visibility = 'hidden';
		}
		img_click3.onclick = function() {
			row3.style.border = '1.7px solid red';
			row1.style.border = '1px solid white';
			row2.style.border = '1px solid white';
			slidess[2].style.visibility = 'visible';
			slidess[1].style.visibility = 'hidden';
			slidess[0].style.visibility = 'hidden';
		}
		/* for (var i = 0; i < img_click.length; i++) {
			    (function(protectedIndex){
			    	img_click[i].onclick= function() {
			            console.log(img_click[protectedIndex]);
			            if(i==1){
			            	slidesr[protectedIndex].style.visibility = 'visible';
				            slidesr[protectedIndex+1].style.visibility = 'hidden';
			            }
			            if(i==2){
			            	slidesr[protectedIndex].style.visibility = 'visible';
				            slidesr[protectedIndex-1].style.visibility = 'hidden';
			            }	
			        }
			    })(i);
		};
		 */
		var index = 1;
		var str = "hidden";
		var width = 0;
		function plusSlides(n) {

			console.log('n click: ' + n);
			var zo = 15;
			setTimeout(function() {
				width++;
				console.log('width: ' + width);
				showimage(index = n);
			}, 2650);
			width = 0;
			if (n == 3) {
				PSV.animate({
					longitude : -0.2,
					latitude : -0.2
				}, 1200);
				setTimeout(
						function() {
							document.getElementById("event_click2").style['pointer-events'] = 'none';
							setTimeout(
									function() {
										document.getElementById("event_click2").style['pointer-events'] = 'visible';
									}, 2650);
							var set = setInterval(function() {
								if (zo > 85) {
									clearInterval(set);
									zo = 15;
									PSV.zoom(10);
								} else {
									zo = zo + 2;
									PSV.zoom(zo);
								}
							}, 40);
							PSV2.startAutorotate();
							row3.style.border = '1.7px solid red';
							row1.style.border = '1px solid white';
							row2.style.border = '1px solid white';
						}, 1200)
			}
			if (n == 2) {
				PSvvvvV.animate({
					longitude : -0.2,
					latitude : -0.2
				}, 1200);
				PSvvvvV.stopAutorotate();
				setTimeout(
						function() {
							document.getElementById("event_click1").style['pointer-events'] = 'none';
							setTimeout(
									function() {
										document.getElementById("event_click1").style['pointer-events'] = 'visible';
									}, 2650);
							var set = setInterval(function() {
								if (zo > 85) {
									clearInterval(set);
									zo = 15;
									PSvvvvV.zoom(10);
								} else {
									zo = zo + 2;
									PSvvvvV.zoom(zo);
								}
							}, 40);
							PSV.startAutorotate();
							row2.style.border = '1.7px solid red';
							row1.style.border = '1px solid white';
							row3.style.border = '1px solid white';
						}, 1200);
			}
			if (n == 4) {
				PSV2.animate({
					longitude : -0.2,
					latitude : -0.2
				}, 1200);
				setTimeout(
						function() {
							document.getElementById("event_click3").style['pointer-events'] = 'none';
							setTimeout(
									function() {
										document.getElementById("event_click3").style['pointer-events'] = 'visible';
									}, 2650);
							var set = setInterval(function() {
								if (zo > 85) {
									clearInterval(set);
									zo = 15;
									PSV2.zoom(10);
								} else {
									zo = zo + 2;
									PSV2.zoom(zo);
								}
							}, 50);
							PSvvvvV.startAutorotate();
							row1.style.border = '1.7px solid red';
							row2.style.border = '1px solid white';
							row3.style.border = '1px solid white';
						}, 1200);
			}
		}
		function showimage(n) {

			var i;
			console.log('n: ' + n);
			var slides = document.querySelectorAll('.section');
			//   var dots=document.querySelectorAll('.dots');
			if (n > slides.length) {
				index = 1;
			}
			console.log('lenght: ' + slides.length);
			for (i = 0; i < slides.length; i++) {
				slides[i].style.visibility = 'hidden';
			}
			/*  for ( i = 0; i < dots.length; i++) {
			      dots[i].className = dots[i].className.replace(" active","");
			  } */
			slides[index - 1].style.visibility = 'visible';

		}
		showimage(index);
	</script>

	<script type="text/javascript">
		//js cho audio------------------------
		
		var audio = document.getElementById("myAudio");
		audio.volume = 0.00;
		var interval_obj=setInterval(function(){
			audio.volume=audio.volume+0.01
			if(audio.volume==0.15)clearInterval(interval_obj);
			}, 1000);
	</script>
