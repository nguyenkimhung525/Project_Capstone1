<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
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
<title>${form.title}</title>
</head>
<body>
	<div class="token">
		<span style="color: #00c400;font-size: 24px">&#10004;</span>&nbsp;Đăng ký thành công<br><span></span>
	</div>
	<div class="popup">
		<div class="cd-popup-event"></div>
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
					<input type="text" placeholder="Name" name="name" required="required">
				</div>
				<div style="margin-top: 7px;">
					Điện Thoại <span style="color: red">*</span>
					<br>
					<input type="text" placeholder="Điện Thoại" name="name" required="required">
				</div>
				<div style="margin-top: 7px;">
					Email<span style="color: red">*</span>
					<br>
					<input type="text" placeholder="Email" name="name" required="required">
				</div>
				<div style="margin-top: 7px;">
					Yêu cầu khác<span style="color: red">*</span>
					<br>
					<textarea rows="4" cols="45 wrap="physical" name="comments" style="margin-top: 10px"></textarea>
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
	
	
	
	<div class="navigator-ct remove" id="navigator-c">	
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
						<li><span style="" onclick="move_up()">Chính Sách Tour</span></li>
						<li><span>Thông Tin</span></li>
						<li><span>Liên Hệ</span></li>
					</ul>
				</div>
				<div class="content-view">
				<c:forEach items="${detailTour}" var="detailTour">
					<div class="row-${detailTour.id}">
					<div class="row-1-header">
						<b>${detailTour.header_ct}</b>
						<p style="font-size: 1.3rem;line-height: 1.5;;margin-top: 5px;">${detailTour.content} </p>
					</div>
					<div class="row-1-img">
						<img alt="" src="${pageContext.request.contextPath}/static/image-booking/${detailTour.image}">
						<div class="row-1-gt"> <b><i>${detailTour.attach}</i></b></div>
					</div>
				</div>
				</c:forEach>
				
				
					<div class="row-6" >	
						<p><b style="font-size: 18px;border-bottom: 2px solid #939393;">Thông tin chuyến đi:</b></p>
						<p><b>Giá tour không bao gồm:</b>
						<p>&nbsp;&nbsp;&nbsp;- Một vé như người lớn được tính 75% giá với giá vé gốc….</p>						
						<p>&nbsp;&nbsp;&nbsp;- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…	</p>					
						<p>&nbsp;&nbsp;&nbsp;- Chi phí tham quan ngoài chương trình ….</p>						
						<p><b>Giá vé trẻ em:</b>
						<p>&nbsp;&nbsp;&nbsp;- Trẻ em dưới 5 tuổi: không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai
							 người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn. Vé máy
							  bay, tàu hỏa, phương tiện vận chuyển công cộng mua vé theo qui định của các đơn vị vận chuyển.</p>
						<p>&nbsp;&nbsp;&nbsp;- Trẻ em từ 5 - dưới 12 tuổi: 50% giá tour người lớn (không có chế độ giường riêng). Hai người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải mua 1 suất giường đơn.</p>
						<p>&nbsp;&nbsp;&nbsp;- Trẻ em từ 12 tuổi trở lên: mua một vé như người lớn.</p>
						<p><b>Điều kiện thanh toán:</b></p>
						<p>&nbsp;&nbsp;&nbsp;- Khi đăng ký đặt cọc 50% số tiền tour</p>
						<p>&nbsp;&nbsp;&nbsp;- Số tiền còn lại thanh toán hết trước ngày khởi hành 7-10 ngày (áp dụng tour ngày thường), trước ngày khởi hành 20-25 ngày (áp dụng tour lễ tết)	</p>				
						<p><b>Các điều kiện huỷ tour: </b>
						<p>&nbsp;&nbsp;&nbsp;- Được chuyển sang các tuyến du lịch khác trước ngày khởi hành 10 ngày : Không mất chi phí.</p>
						<p>&nbsp;&nbsp;&nbsp;- Nếu hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký từ sau 10 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc tour.</p>
					</div>
					</div>
			</div>
			<div class="ct-col el-2">
				<div class="header-view">
					<h4 id="demo">${form.head} </h4>
				</div>
				<div class="content-view">
					<div class="row-1-img">
						<img src="${pageContext.request.contextPath}/static/image-booking/${form.image}" alt="">
					</div>
					<div class="row-2-ct">
						<p><i class="fa fa-barcode"></i>Mã Tour&nbsp;: &nbsp;<span style="color: #7e7e7e;">${form.id}</span></span></p>
						<p><i class="fa fa-calendar-minus-o"></i>Ngày Đi&nbsp;:&nbsp; <span style="color: #7e7e7e;">${form.startdate}</span></p>
						<p><i class="fa fa-calendar-plus-o"></i>Ngày Về&nbsp;:&nbsp; <span style="color: #7e7e7e;">${form.enddate}</span></p>
						<p><i class="fa fa-calendar"></i>Thời Gian&nbsp;:&nbsp;<span style="color: #7e7e7e;">${form.totaldate}</span>
						</p>
						<p><i class="fa fa-user-plus"></i>Số Người Lớn&nbsp;:&nbsp;<input type="number"  onchange="myonchange()" oninput="myFunction()" id="myNumber" value="1" min="1" max="100"></p>
						<p><i class="fa fa-male" style="font-size: 18px;"></i>Số Trẻ Em&nbsp;:&nbsp;<input  style="margin-left: 23px;" type="number"  onchange="myonchange_te()" oninput="myFunction_te()" id="myNumber_te" value="1"  min="1" max="100"></p>
						<p><i class="fa fa-child" style="font-size: 18px;"></i></i>Em Bé&nbsp;:&nbsp;<input  style="margin-left: 41px;" type="number"  onchange="myonchange_eb()" oninput="myFunction_eb()" id="myNumber_eb" value="1"  min="1" max="100"></p>
						
						<div class="last-child"></div>
						<div style="margin-left: 5px;">
							<h3>
								Tổng&nbsp;:&nbsp;<span ><b  id="price" style="color:#ff9b2d "></b></span><span style="color: #ff9b2d"><b>VNĐ</b></b></span>
							</h3>
						</div>
						<div class="submit"><button type="submit">ĐẶT TOUR  </button></div>
					</div>
				</div>	
			</div>
		</div>
		
	</div>
	<div class="footer">
			<%@include file="./shared-static/footer.jsp" %>
		</div>
		<script type="text/javascript">
		var store=1;
		var row_2=document.querySelector('.el-2');
		var value=parseInt(${form.price});
		var str=value.toString();
		var last=str.length;
		var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
	    document.getElementById("price").innerHTML=PRICE_VND;
		var heght = 0;
		<c:if test="${fn:length(detailTour)>=4}">	
			heght=parseInt(2690)+parseInt(520);
		</c:if>
		<c:if test="${fn:length(detailTour)<4}">
			heght=2690;
		</c:if>
		var TOTAL=0;
		var TOTAL1=0;
		
		document.getElementById("myNumber").value=1;
		document.getElementById("myNumber_te").value=1;
		document.getElementById("myNumber_eb").value=1;
		function myFunction(){
		    var x = document.getElementById("myNumber").value;
		    if(store<x){
		    	var root=0;
		    	root=parseInt(TOTAL1)+parseInt(value)*(x-((1-75/100)*(x-1)));
		    }
		    else if(store>x){
		    	var root=0;
		    	root=parseInt(TOTAL1)+parseInt(value)*(x-((1-75/100)*(x-1)));
		    }
		    store=x;
		    if(x==1){
		    	TOTAL=0;
		    }
		    else TOTAL=root-value-TOTAL1;
		    if(root==value){
		    	var str=value.toString();
				var last=str.length;
				var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
			    document.getElementById("price").innerHTML=PRICE_VND;
		    }
		    else{
		    	 	var str=root.toString();
					var last=str.length;
					var PRICE_VND=str.substring(0,2)+'.'+str.substring(2,5)+'.'+str.substring(5,str.length);
					document.getElementById("price").innerHTML=PRICE_VND;
		    }
		   
		}
		var store1;
		function myFunction_te(){
		    var xx = document.getElementById("myNumber_te").value;

		    if(store1<xx){
		    	var root1=0;
		    	root1=parseInt(TOTAL)+parseInt(value)*(xx-((1-50/100)*(xx-1)));
		    }
		    else if(store1>xx){
		    	var root1=0;
		    	root1=parseInt(TOTAL)+parseInt(value)*(xx-((1-50/100)*(xx-1)));
		    }
		    store1=xx;
		    if(xx==1){
		    	TOTAL1=0;
		    }
		    else{
		    	TOTAL1=root1-value-TOTAL;
		    	
		    }
		    if(root1==value){
		    	var str=value.toString();
				var last=str.length;
				var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
			    document.getElementById("price").innerHTML=PRICE_VND;
		    }
		    else{
		    	 var str=root1.toString();
					var last=str.length;
					var PRICE_VND=str.substring(0,2)+'.'+str.substring(2,5)+'.'+str.substring(5,str.length);
					document.getElementById("price").innerHTML=PRICE_VND;
		    }
		   
		}
		
			window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		    if ((document.body.scrollTop > 680 && document.body.scrollTop<heght) || (document.documentElement.scrollTop > 680 && document.documentElement.scrollTop<heght)  ) {
		    		row_2.style.position = "fixed";
		    }
		    else if(document.body.scrollTop === 659 || document.documentElement.scrollTop == 659){
	    		row_2.style.position = "static";
		    }
		    else {
		    		row_2.style.position = "static";	
		    }
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
			var popup_event=document.querySelector('.cd-popup-event');
		  	var popup=document.querySelector('.popup');
		  	popup_event.onclick=function(){
		  		popup.classList.remove("visiablen");
		 }
		 var close=document.querySelector('.close-v');
		 close.onclick=function(){
			 popup.classList.remove("visiablen");
		 }
		 var req=document.querySelector('#req');
		 var token=document.querySelector('.token');
		 req.onclick=function(){
			 popup.classList.remove("visiablen");
			 token.classList.add("visable");
			 var set = setTimeout(function(){
			 		token.classList.remove("visable");
			 		token.classList.remove("remove");
				}, 3500);
		 	 setTimeout(function(){
		 		
		 		token.classList.add("remove");
			}, 3000);
		 	
		 }
		   var targetElm = document.querySelector('.row-6');
		 function move_up() {
			 targetElm.scrollIntoView();
		 }
		</script>
		<script type="text/javascript">
		var z = document.querySelector("#zoom");
		var zv = document.querySelector(".content-view");

		var na = document.getElementById("navigator-c");
		function zoom() {
			na.classList.remove("remove");
			na.classList.add("add");
		};
	</script>
	
</body>
</html>