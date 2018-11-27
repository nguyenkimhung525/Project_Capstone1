<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/js/jquery.wmuSlider.js"
	type="text/javascript"></script>

<link href="${pageContext.request.contextPath}/static/css/booking.css"
	type="text/css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/static/css/photo-sphere-viewer.min.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/three.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/D.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/doT.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/uevent.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/photo-sphere-viewer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/Projector.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/css/view360.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="token">
		<span style="color: #00c400;font-size: 24px">&#10004;</span>&nbsp;Đăng ký thành công<br><span></span>
	</div>
	<div class="popup">
		<div class="cd-popup-container">
			<div class="close-v">
				&#10006;
			</div>
			<div class="header-p">
				<h3><b>Yêu cầu đặt Tour</b></h3>
			</div>
			<div class="content-p">
				<div>
					Họ & Tên <span style="color: red">*</span>
					<br>
					<input type="text" placeholder="Name" name="name">
				</div>
				<div style="margin-top: 7px;">
					Điện Thoại <span style="color: red">*</span>
					<br>
					<input type="text" placeholder="Điện Thoại" name="name">
				</div>
				<div style="margin-top: 7px;">
					Email<span style="color: red">*</span>
					<br>
					<input type="text" placeholder="Email" name="name">
				</div>
				<div style="margin-top: 7px;">
					Yêu cầu khác<span style="color: red">*</span>
					<br>
					<textarea rows="4" cols="45" style="margin-top: 10px;">
					</textarea>
				</div>
				<div class="footer-v">
					<button id="req" type="submit"><h3>GỮI YÊU CẦU</h3></button>
				</div>
			</div>
		</div>
	</div>
	<div class="header" style="">
			<%@include file="./shared-static/header.jsp"%>
	</div>
	<div class="navigator">	
		<c:if test="${clickview360==true}">
			<%@include file="./shared-static/view360.jsp" %>
		</c:if>
	</div>
	<div class="content">
		<div class="ct-br"></div>
	
		<div class="content-view" id="content">
			<div class="ct-col el-1">
				<div class="header-view">
					<i class="fa fa-home"></i>&nbsp; &#10095;&nbsp; Trang Chủ&nbsp;&#10095;&nbsp;Linh Ứng - Ngủ Hành Sơn - Sơn Trà&nbsp; &#10095;&nbsp;MTCH-2018-0001
				</div>
				<div class="navagator">
					<ul>
						<li><span><b>Chương Trình Tour</b></span></li>
						<li><span>Chính Sách Tour</span></li>
						<li><span>Thông Tin</span></li>
						<li><span>Liên Hệ</span></li>
					</ul>
				</div>
			</div>
			<div class="ct-col el-2">
				<div class="header-view">
					<h4 id="demo">Linh Ứng - Ngủ Hành Sơn - Sơn Trà </h4>
				</div>
				<div class="content-view">
					<div class="row-1-img">
						<img src="${pageContext.request.contextPath}/static/image/dailoan.jpg" alt="">
					</div>
					<div class="row-2-ct">
						<p><i class="fa fa-barcode"></i>Mã Tour&nbsp;: &nbsp;<span style="color: #969696;">MTCH-2018-0001</span></span></p>
						<p><i class="fa fa-calendar-minus-o"></i>Ngày Đi&nbsp;:&nbsp; <span style="color: #969696;">12-12-2018</span></p>
						<p><i class="fa fa-calendar-plus-o"></i>Ngày Về&nbsp;:&nbsp; <span style="color: #969696;">19-12-2018</span></p>
						<p><i class="fa fa-calendar"></i>Thời Gian&nbsp;:&nbsp;<span style="color: #969696;">7 ngày 6 đêm</span>
						</p>
						<p><i class="fa fa-user-plus"></i>Số Người&nbsp;:&nbsp;<input type="number"  onchange="myonchange()" oninput="myFunction()" id="myNumber" value="1" min="1" max="100"></p>
						<div class="last-child"></div>
						<div style="margin-left: 5px;">
							<h3>
								Tổng&nbsp;:&nbsp;<span ><b  id="price" style="color:#ff9b2d ">9.000.000</b></span><span style="color: #ff9b2d"><b>VNĐ</b></b></span>
							</h3>
						</div>
						<div class="submit"><button type="submit">ĐẶT TOUR</button></div>
					</div>
				</div>	
			</div>
		</div>
	</div>
	<div class="footer">
			<%@include file="./shared-static/footer.jsp" %>
		</div>
		<script type="text/javascript">
		var store=0;
		var row_2=document.querySelector('.el-2');
		var price=document.getElementById("price").innerHTML;
		var value=parseFloat(price);
		document.getElementById("myNumber").value=1;
		function myFunction(){
		    var x = document.getElementById("myNumber").value;
		    if(store<x){
		    	var root=0;
		    	root=parseInt(x-1)*3+parseInt(value);
			    document.getElementById("price").innerHTML=root+".000.000";
		    }
		    else if(store>x){
		    	root=parseInt(x-1)*3+parseInt(value);
			    document.getElementById("price").innerHTML=root+".000.000";
		    }
		    store=x;
		}
			window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		    if ((document.body.scrollTop > 680 && document.body.scrollTop<2042) || (document.documentElement.scrollTop > 680 && document.documentElement.scrollTop<2042)  ) {
		    		row_2.style.position = "fixed";
		    }
		    else if(document.body.scrollTop === 659 || document.documentElement.scrollTop == 659){
	    		row_2.style.position = "static";
		    }
		    else {
		    		row_2.style.position = "static";
		    }
		    console.log(document.body.scrollTop);
	    	console.log( document.documentElement.scrollTop);
		}
		</script>
		<script type="text/javascript">
		 jQuery(document).ready(function($){
			    //open popup
			    $('.submit').on('click', function(event){
			        event.preventDefault();
			        $('.popup').addClass('visiablen');
			     });
			 });
		 var popup=document.querySelector('.popup');
		 popup.onclick=function(){
			 popup.classList.remove("visiablen");
		 }
		 var close=document.querySelector('.close-v');
		 close.onclick=function(){
			 close.classList.remove("visiablen");
		 }
		 var req=document.querySelector('#req');
		 var token=document.querySelector('.token');
		 req.onclick=function(){
			 token.classList.add("visable");
		 	setTimeout(() => {
		 		token.classList.add("remove");
			}, 3000);
		 }
		</script>
</body>
</html>