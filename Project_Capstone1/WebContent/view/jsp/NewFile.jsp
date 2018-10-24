<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script src="${pageContext.request.contextPath}/static/jss/main.js" type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/static/js/jquery.wmuSlider.js"></script>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="container">
				<div class="header-nav">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<div class="logo">
								<a class="navbar-brand" href="main.jsp"><i
									class="glyphicon glyphicon-plane" aria-hidden="true"></i>360°
									ViewTour <span>Luôn đồng hành cùng bạn</span></a>
							</div>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse nav-wil"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="hvr-sweep-to-bottom active"><a href="main.jsp">Trang
										Chủ</a></li>
								<li class="hvr-sweep-to-bottom"><a href="#">Dịch Vụ</a></li>
								<li class="hvr-sweep-to-bottom"><a href="#">Khuyến Mãi</a></li>
								<li class="hvr-sweep-to-bottom"><a href="#">Liên Hệ</a></li>
								<li class="hvr-sweep-to-bottom"><a href="contact.html">Đăng
										Nhập</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</div>
		</div>
		<div class="banner">
			<div class="banner-left ">
				<div class="traveller"
					style="background-image: url('${pageContext.request.contextPath}/static/image/1.jpg');background-size:cover;min-height:632px;">
					<div class="container">
						<h3></h3>
						<p class="velit"></p>
						<div class="wmuSlider example1">
							<div class="wmuSliderWrapper">
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="banner-wrap">
										<div class="traveller-info">
											<div class="traveller-info-left">
												<h4>Tà Năng Phan Dũng – cung trekking đẹp nhất Việt Nam </h4>
												<p>Cung đường với những ngọn đồi, thảo nguyên xanh mướt màu cỏ 
												sẽ khiến bạn gác lại tất cả những âu lo, bộn bề của cuộc sống 
												hàng ngày mà thả mình thư giãn giữa thiên nhiên đất trờ</p>
											</div>
											<div class="traveller-info-right">
												<img
													src="${pageContext.request.contextPath}/static/image/tanang.jpg"
													alt="" class="img-responsive" />
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</article>
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="banner-wrap">
										<div class="traveller-info">
											<div class="traveller-info-left">
												<h4>Du lịch Đà Lạt đi săn mây mù</h4>
												<p>Được mệnh danh là "thành phố sương mù" hay 
												"thành phố mộng mơ", Đà Lạt hấp dẫn khách du lịch
												 với sự lãng mạn, khí hậu dễ chịu cùng những địa điểm
												  tham quan thú vị.Dân yêu Phượt mê mẩn bởi vẻ đẹp tình tứ của nó.</p>
											</div>
											<div class="traveller-info-right">
												<img
													src="${pageContext.request.contextPath}/static/image/9-4.jpg"
													alt="" class="img-responsive" />
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</article>
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="banner-wrap">
										<div class="traveller-info">
											<div class="traveller-info-left">
												<h4>Cầu Vàng Đà Nẵng</h4>
												<p>một công trình mới của Sun World Bà Nà H
												ills. Được khởi công xây dựng vào 07/2017 tới 0
												4/2018 thì hoàn thành, thời gian gần đây đã đi 
												vào hoạt động và đón những lượt khách tham quan d
												u lịch Đà Nẵng đầu tiên.Sở hữu thiết kế vô cùng độc đáo và mới lạ, chưa từng có ở Việt Nam</p>
											</div>
											<div class="traveller-info-right">
												<img alt=""
													src="${pageContext.request.contextPath}/static/image/2_1.jpg"
													class="img-responsive" />
											</div>	
											<div class="clearfix"></div>
										</div>
									</div>
								</article>
							</div>
						</div>
						<script type="text/javascript">
							$('.example1').wmuSlider();
						</script>
					</div>
				</div>
			</div>
			<div class="banner-right">
				<div style="" class="br-col-1-image">
					<img alt=""
						src="${pageContext.request.contextPath}/static/image/Untitled.png">
				</div>
				<div class="br-col-2-op"></div>
				<div class="br-col-3-form">
					<div class="br-col-2-form-el form">
						<div id="br-row-1-col-1">
							<h4>Đặt tour du lịch</h4>
						</div>
						<div id="br-row-2-col-1">
							<h5>Cùng những trải nghiệm tuyệt vời</h5>
						</div>
						<div id="br-row-3-col-1">
							<div class="child input">
								<i class="fa fa-map-marker a"></i> <input class="input-field" id="myInput" type="text" placeholder="Nhập tên thành phố..." name="psw">
							</div>
							<div class="child button">
								<button type="submit" id="button" onclick="A()">
									<i class="fa fa-search"></i> Tìm Kiếm
								</button>
								<script type="text/javascript"></script>
							</div>
							<div class="br-row-3-col-1-menu" id="menu">
								<div class="menu-header">
										<b>Lựa chọn thành phố</b>
								</div>
								<div class="menu-col-1">
									<strong>Miền Bắc</strong>
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>Hà Nội</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Hạ Long</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Sapa</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Quảng Ninh</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Bắc Ninh</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Ninh Bình</a></li>
									</ul>
									<strong>Miền Nam</strong>
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>TP.HCM</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Tây Ninh</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Miền Tây</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Đà Lạt</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Phú Quốc</a></li> 
									</ul>
								</div>
								<div class="menu-col-2">
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>TP.HCM</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Nam Du</a></li>
                                         <li><i class="fa fa-pagelines"></i><a> Tứ Bình </a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Q.Đ Bà Lụa</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Vũng Tàu</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Côn Đảo</a></li>  
									</ul>
									<strong>Miền Trung</strong>
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>Phan Thiết</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Nha Trang</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Đà Lạt</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Tây Nguyên</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Đà Nẵng-Hội An</a></li> 
                                         <li><i class="fa fa-pagelines"></i><a>Huế</a></li> 
									</ul>
								</div>
								<div class="menu-col-3">
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>Mỹ Sơn</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Phan Rang</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Bình Thuận</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Lý Sơn</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Quảng Bình</a></li> 
									</ul>
									<strong>Châu Á-Âu</strong>
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>HongKong</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Hàn Quốc</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Campuchia</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Malaysia</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Đài Loan</a></li> 
                                         <li><i class="fa fa-pagelines"></i><a>Nhật Bản</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Singapore</a></li> 
									</ul>	
								</div>
								<div class="menu-col-4">
									<ul>
										 <li><i class="fa fa-pagelines"></i><a>Thái Lan</a></li>
                                         <li><i class="fa fa-pagelines"></i><a >Brunei</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Indonesia</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Philippines</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Ấn Độ</a></li> 
                                         <li><i class="fa fa-pagelines"></i><a>Bhutan</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Kazakhstan</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Nepal</a></li>
                                         <li><i class="fa fa-pagelines"></i><a>Panama</a></li>  
									</ul>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content"></div>
		<div class="footer"></div>
	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>