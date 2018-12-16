<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
	<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>
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
					<div style="position: relative;">
						Họ & Tên <span style="color: red">*</span>
						<br>
						<div id="errorname" style="display:none ;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
							Cần nhập giá trị.
						</div>
						<input type="text" id="name" placeholder="Name" onkeyup="nameclick()"/>
					</div>
					<div style="margin-top: 7px;position: relative">
						Điện Thoại <span style="color: red">*</span>
						<br>
						<div id="error-phone" style="display:none;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
							Cần nhập giá trị.
						</div>
						<input type="text" id="phone" placeholder="Phone"/>
					</div>
					<div style="margin-top: 7px;position: relative">
						Email<span style="color: red">*</span>
						<br>
						<div id="error-email" style="display:none;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
							Cần nhập giá trị.
						</div>
						<input type="text" id="email" placeholder="Email"/>
					</div>
					<div style="margin-top: 7px;">
						Yêu cầu khác<span style="color: red">*</span>
						<br>
						<textarea rows="4" cols="45" id="state"></textarea>
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
	
	

	<div class="navigator-ct add remove" id="navigator-c">	
		<c:if test="${clickview360==true}">
			<%@include file="./shared-static/view360.jsp" %>
		</c:if>
		<div class="zoom-view" onclick="zoom(1)" id="zoom">
	
		</div>
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
			<div class="ct-col element-2">
				<form action="${pageContext.request.contextPath}/form-customer" method="post">
				<div class="header-view">
					<h4 id="demo">${form.head} </h4>
				</div>
				<div class="content-view">
					<div class="row-1-img">
						<img src="${pageContext.request.contextPath}/static/image-booking/${form.image}" alt="">
					</div>
					<div class="row-2-ct">
						<p><i class="fa fa-barcode"></i>Mã Tour&nbsp;: &nbsp;<span style="color: #7e7e7e;"><input type="text" class="idtour" name="id" value="${form.id}"></span></p>
						<p><i class="fa fa-calendar-minus-o"></i>Ngày Đi&nbsp;:&nbsp; <span style="color: #7e7e7e;"><input type="text" id="startdate" name="startdate" value="${form.startdate}"></span></p>
						<p><i class="fa fa-calendar-plus-o"></i>Ngày Về&nbsp;:&nbsp; <span style="color: #7e7e7e;"><input type="text" id="enddate" name="enddate" value="${form.enddate}"></span></p>
						<p><i class="fa fa-calendar"></i>Thời Gian&nbsp;:&nbsp;<span style="color: #7e7e7e;"><input type="text" id="totaldate" name="totaldate" value="${form.totaldate}"></span>
						</p>
						<div class="last-child"></div>
						<div class="submit"><button type="submit">ĐẶT TOUR</button></div>
					</div>
				</div>	
				</form>
				
			</div>
		</div>
		
	</div>
	<div class="footer">
			<%@include file="./shared-static/footer.jsp" %>
		</div>
		<script type="text/javascript">
		var store=0;
		var row_22=document.querySelector('.element-2');
		var heghtt = 0;
		<c:if test="${fn:length(detailTour)>=4}">	
			heghtt=parseInt(2690)+parseInt(520);
		</c:if>
		<c:if test="${fn:length(detailTour)<4}">
			heghtt=2690;
		</c:if>
		
			window.onscroll = function() {scrollFunctions()};
		function scrollFunctions() {
		    if ((document.body.scrollTop > 680 && document.body.scrollTop<heghtt) || (document.documentElement.scrollTop > 680 && document.documentElement.scrollTop<heghtt)  ) {
		    		row_22.style.position = "fixed";
		    }
		    else if(document.body.scrollTop === 659 || document.documentElement.scrollTop == 659){
		    	row_22.style.position = "static";
		    }
		    else {
		    	row_22.style.position = "static";	
		    }
		}
		</script>
			
		<script type="text/javascript">
		 /* jQuery(document).ready(function($){
			     //open popup
			    $('.submit').on('click', function(event){
			        event.preventDefault();
			        $('.popup').addClass('visiablen');
			     });
			 });  */
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
		 var check=false;
		 var namee=document.getElementById('name');
		 var phone=document.getElementById('phone');
		 var email=document.getElementById('email');
		 var statement=document.getElementById('state');
		 namee.value="";
		 phone.value="";
		 email.value="";
		 var error=document.querySelector('#errorname');
		 var errorphone=document.querySelector('#error-phone');
		 var erroremail=document.querySelector('#error-email');
		 var pattername=/^\s*[a-zA-Z,\s]+\s*$/;
		 var patternemail=/^((([!#$%&'*+\-/=?^_`{|}~\w])|([!#$%&'*+\-/=?^_`{|}~\w][!#$%&'*+\-/=?^_`{|}~\.\w]{0,}[!#$%&'*+\-/=?^_`{|}~\w]))[@]\w+([-.]\w+)*\.\w+([-.]\w+)*)$/;
		 var patternphone=/^[0-9]*$/;
		 var checkname=false;
		 var checkphone=false;
		 var checkemail=false;
		 namee.onclick = function(){
				error.style.display='none';
			};
		phone.onclick = function(){
			errorphone.style.display='none';
		};
		email.onclick = function(){
			erroremail.style.display='none';
		};
		var namecus="";
		var phonecus="";
		var mailcus="";
		   var targetElm = document.querySelector('.row-6');
		 function move_up() {
			 targetElm.scrollIntoView();
		 }
		</script>
		<script type="text/javascript">
		var z = document.querySelector("#zoom");
		var zv = document.querySelector(".content-view");
		var zzz = document.querySelector(".imageview");
		var body = document.querySelector("body");
		var section = document.querySelectorAll(".section");
		var na = document.getElementById("navigator-c");
		var indexv=0;
		function zoom(n) {
			zoomview(indexv+=n);
		}
		function zoomview(n) {
			if(indexv%2!=0){
				console.log('ibdex: '+indexv)
				na.style.height = '767px';
				na.style.marginTop ='-102px';
				section[0].style.height = '767px';
				section[1].style.height = '767px';
				section[2].style.height = '767px';
				section[3].style.height = '767px';
				body.style.overflow = "hidden";
				<c:forEach items="${view360}" var="view" varStatus="status">
					PSV${status.count}.resize({
							height:'767px'
					});
				</c:forEach>
			}
			else{
				na.style.height = '595px';
				na.style.marginTop ='0';
				section[0].style.height = '595px';
				section[1].style.height = '595px';
				section[2].style.height = '595px';
				section[3].style.height = '595px';
				body.style.overflowY = "scroll";
				body.style.overflowX  = "hidden";
				<c:forEach items="${view360}" var="view" varStatus="status">
					PSV${status.count}.resize({
						height:'595px'
					});
				</c:forEach>

	
			}
		}
	</script>
	
</body>
</html>