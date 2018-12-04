<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div class="section el4">
				<div id="photosphere3"></div>
			</div>
		</div>
		<div class="navigation">
			<c:forEach items="${view360}" var="view360" varStatus="status">
				<div class="nv-row el-${status.count}">
					<img class="img-roww el-${status.count}" alt="${status.count}"
						src="/Project_Captone_1/static/image-booking/${view360.image}">
					<div class="nv-row1-ct">${status.count}</div>
				</div>
			</c:forEach>
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
		var div1 = document.getElementById('photosphere');
		var div2 = document.getElementById('photosphere1');
		var div3 = document.getElementById('photosphere2');
		var div4 = document.getElementById('photosphere3');
		var div5 = document.getElementById('photosphere4');
		<c:forEach items="${view360}" var="view" varStatus="status">
	   		 <c:set var="index" value="${status.index>4?0:status.index}"/>
			var PSV${status.count}= new PhotoSphereViewer({
			    panorama: '/Project_Captone_1/static/image-booking/${view.image}',
			    container: div${status.count},
			    navbar: [
			        'autorotate',
			        'zoom',
			        'markers',
			        'caption'
			      ],
	 		    default_fov: 80,
	 		   	default_long:0,
				default_lat:0,
			    time_anim:true,
			    mousewheel: true,
			    mousemove:true,
			    anim_speed:'0.3rpm',	
			    markers:[{
				      id: 'text',
				      longitude: -0.2,
				      latitude: -0.2,
				      html: '<a id="event_click${status.count}" onmouseenter="dung${view.id}(this)" onmouseleave="chay${view.id}(this)" onclick="plusSlides(${status.count});">'+
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
					     content: '<div class="content-image"><img style="width: 135px;height:90px" src="/Project_Captone_1/static/image-booking/${view360[1].image}"></div>',
				        position: 'top'
				      }
				    },
				    {
					      id: 'title',
					      longitude: 0,
					      latitude: 0.2,
					      html: '<div class="div" onmouseenter="dung${view.id}(this)" onmouseleave="chay${view.id}(this)" ><div class="d"><img class="image" src="${pageContext.request.contextPath}/static/image_viewmap/info.png"/></div>',
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
			function dung${view.id}(x) {
				 a=1;
				 b=0;
				clearTimeout(set);
				console.log(a);
				console.log(b);
				PSV${status.count}.stopAutorotate();
				
			};
			function chay${view.id}(x) {
				 b=2;
				 a=0;
				set=setTimeout(() => {
					PSV${status.count}.startAutorotate();
				}, 1200);
					console.log(a);
			};
			
			
			PSV${status.count}.on('click', function(e) {
				setTimeout(function(){
					PSV${status.count}.startAutorotate();
				}, 3000);
			});	
		</c:forEach>
		</script>
	<script type="text/javascript">
		var row = document.querySelectorAll('.nv-row');
		var img_click = document.querySelectorAll('.img-roww');
		var slidess = document.querySelectorAll('.section');
		img_click[0].onclick = function() {
			slidess[0].style.visibility = 'visible';
			slidess[1].style.visibility = 'hidden';
			slidess[2].style.visibility = 'hidden';
			slidess[3].style.visibility = 'hidden';
			row[0].style.border = '1.7px solid red';
			row[1].style.border = '1px solid white';
			row[2].style.border = '1px solid white';
			row[3].style.border = '1px solid white';
		}
		img_click[1].onclick = function() {
			slidess[1].style.visibility = 'visible';
			slidess[0].style.visibility = 'hidden';
			slidess[2].style.visibility = 'hidden';
			slidess[3].style.visibility = 'hidden';
			row[1].style.border = '1.7px solid red';
			row[0].style.border = '1px solid white';
			row[2].style.border = '1px solid white';
			row[3].style.border = '1px solid white';
		}
		img_click[2].onclick = function() {
			slidess[2].style.visibility = 'visible';
			slidess[1].style.visibility = 'hidden';
			slidess[0].style.visibility = 'hidden';
			slidess[3].style.visibility = 'hidden';
			row[2].style.border = '1.7px solid red';
			row[1].style.border = '1px solid white';
			row[0].style.border = '1px solid white';
			row[3].style.border = '1px solid white';

		}
		img_click[3].onclick = function() {
			slidess[3].style.visibility = 'visible';
			slidess[1].style.visibility = 'hidden';
			slidess[0].style.visibility = 'hidden';
			slidess[2].style.visibility = 'hidden';
			row[3].style.border = '1.7px solid red';
			row[1].style.border = '1px solid white';
			row[0].style.border = '1px solid white';
			row[2].style.border = '1px solid white';
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
				showimage(index += n);
			}, 2650);
			width = 0;
			if (n == 3) {
				PSV3.animate({
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
									PSV3.zoom(10);
								} else {
									zo = zo + 2;
									PSV3.zoom(zo);
								}
							}, 40);
							PSV4.startAutorotate();
							row[3].style.border = '1.7px solid red';
							row[1].style.border = '1px solid white';
							row[2].style.border = '1px solid white';
							row[0].style.border = '1px solid white';
						}, 1200)
			}
			if (n == 1) {
				PSV1.animate({
					longitude : -0.2,
					latitude : -0.2
				}, 1200);
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
									PSV1.zoom(10);
								} else {
									zo = zo + 2;
									PSV1.zoom(zo);
								}
							}, 50);
							PSV2.startAutorotate();
							row[1].style.border = '1.7px solid red';
							row[2].style.border = '1px solid white';
							row[3].style.border = '1px solid white';
							row[0].style.border = '1px solid white';
						}, 1200);
			}
		
			if (n == 2) {
				PSV2.animate({
					longitude : -0.2,
					latitude : -0.2
				}, 1200);
				PSV2.stopAutorotate();
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
									PSV2.zoom(10);
								} else {
									zo = zo + 2;
									PSV2.zoom(zo);
								}
							}, 40);
							PSV3.startAutorotate();
							row[2].style.border = '1.7px solid red';
							row[3].style.border = '1px solid white';
							row[1].style.border = '1px solid white';
							row[0].style.border = '1px solid white';
						}, 1200);
			}
			if (n == 4) {
				PSV4.animate({
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
									PSV4.zoom(10);
								} else {
									zo = zo + 2;
									PSV4.zoom(zo);
								}
							}, 50);
							PSV1.startAutorotate();
							row[0].style.border = '1px solid red';
							row[2].style.border = '1px solid white';
							row[3].style.border = '1px solid white';
							row[1].style.border = '1px solid white';
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
