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
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/demo.js"></script>
<script
	src="${pageContext.request.contextPath}/static/jss/jquery.wmuSlider.js"></script>
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet">
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
								<button type="submit">
									<i class="fa fa-search"></i> Tìm Kiếm
								</button>
							</div>
							<div class="br-row-3-col-1-menu" id="menu">
								<div class="menu-header">
									<b>Lựa Chọn Thành Phố</b>
								</div>
								<div class="menu-col-1">
									<strong>- MIỀN BẮC</strong>
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el1">Hà Nội</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el2">Hạ Long</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el3">Quảng Ninh</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el4">Sapa</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el5">Sơn La</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el6">Hải Phòng</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el7">Ninh Bình</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el8">Hòa Bình</a></li>
									</ul>
									<strong>- MIỀN NAM</strong>
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el9">TP.HCM</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el10">Cần Thơ</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el11">Tây Ninh</a></li>
									</ul>
								</div>
								<div class="menu-col-2">
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el12">Miền Tây</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el13"> Đà Lạt</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el14">Phú Quốc</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el15">Nam Du</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el16">Q.Đ Bà Lụa</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el17">Vũng Tàu</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el18">Cô Đảo</a></li>
									</ul>
									<strong>- MIỀN TRUNG</strong>
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el19">Phan Thiết</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el20">Nha Trang</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el21">Đà Lạt</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el22">Tây Nguyên</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el23">Đà Nẵng-Hội An</a></li>
										
									</ul>
								</div>
								<div class="menu-col-3">
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el24">Huế</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el25">Mỹ Sơn</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el26">Phan Rang</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el27">Quảng Bình</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el28">Ninh Thuận</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el29">Quy Nhơn</a></li>
									</ul>
										<strong>- CHÂU Á-ÂU</strong>
									<ul>
										<li><i class="fa fa-pagelines"></i><a id="el30">Campuchia</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el31">Đài Loan</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el32">Hàn Quốc</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el33">HongKong</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el34">Malaysia</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el35">Myanmar</a></li>
										
									</ul>
								</div>
								<div class="menu-col-4">
								<ul>
									<li><i class="fa fa-pagelines"></i><a id="el36">Nhật Bản</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el37">Singapore</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el38">Thái Lan</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el39">Brunei</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el40">Indonesia</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el41">Philippines</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el42">Ấn Độ</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el43">Bhutan</a></li>
										<li><i class="fa fa-pagelines"></i><a id="el44">Kazakhstan</a></li>
								</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>		

		</div>
		<div style="clear: both;"></div>
		<div class="content-element-part-1">
			<div class="ct-row-1 header">
				<h2 style="padding-bottom: 5px;">Địa điểm nổi bật</h2>
				<p>Chăm chỉ cả năm. Đến lúc tận hưởng</p>
			</div>
			<div class="ct-row-2">
				<div class="ct-row-2-el-1">
					<div class="el col-1 ">
						<div class="col-1-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/maxresdefault.jpg">
						</div>
						<div class="col-1-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Nha Trang</b>
									</h4>
									<p class="p" style="font-style: italic;">một bức tuyệt tác của tự nhiên và con người với nhiều
										địa điểm du lịch Nha Trang nổi tiếng.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">5.900.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-2">
						<div class="col-2-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/singapore-skyline-with-merlion.jpg">
						</div>
						<div class="col-2-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Singapore</b>
									</h4>
									<p class="p" style="font-style: italic;">Singapore nổi tiếng với rất nhiều chương trình biểu diễn
									 nhạc nước hấp dẫn</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">10.999.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-3">
						<div class="col-3-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/dailoan.jpg">
						</div>
						<div class="col-3-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Đài Loan</b>
									</h4>
									<p class="p" style="font-style: italic;">Đài Loan không chỉ được biết đến như Mãnh hổ kinh tế của Châu Á mà còn là điểm đến du lịch hấp dẫn.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">7.600.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ct-row-2-el-2">
					<div class="el col-1">
						<div class="col-1-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/thanh-pho-tokyo-nhat-ban.jpg">
						</div>
						<div class="col-1-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Nhật Bản	</b>
									</h4>
									<p class="p" style="font-style: italic;">Nhật Bản, xứ sở hoa anh đào, vẫn luôn là nơi thu hút rất nhiều khách du lịch trên thế giới.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">17.900.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-2">
						<div class="col-2-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/thailan.jpg">
						</div>
						<div class="col-2-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Thái Lan</b>
									</h4>
									<p class="p" style="font-style: italic;">nơi con người thân thiện và vui vẻ, đất nước 
										nhiệt đới độc đáo, nền văn hóa và lịch sử lâu đời.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">8.600.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-3">
						<div class="col-3-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/Song-han-da-nang-mytour-1.jpg">
						</div>
						<div class="col-3-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Đà Nẵng</b>
									</h4>
									<p class="p" style="font-style: italic;">Đà Nẵng có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà...</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">6.800.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-element-part-2">
			<div class="ct-row-1 header">
				<h2 style="padding-bottom: 5px;">Du lịch giá tốt</h2>
				<p >Lên rừng xuống biển. Trọn vẹn Việt Nam</p>
			</div>
			<div class="ct-row-2">
				<div class="ct-row-2-el-1">
					<div class="el col-1 ">
						<div class="col-1-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/mykhedn.jpg">
						</div>
						<div class="col-1-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Đà Nẵng</b>
									</h4>
									<p class="p" style="font-style: italic;">Đà Nẵng có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà...</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">6.800.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-2">
						<div class="col-2-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/quynhon.jpg">
						</div>
						<div class="col-2-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Quy Nhơn</b>
									</h4>
									<p class="p" style="font-style: italic;">Thắng cảnh nổi tiếng với vẻ đẹp hoang sơ.Bạn sẽ có những góc chụp hình và ngắm cảnh tuyệt đẹp.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">5.000.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-3">
						<div class="col-3-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/dao-jeju-han-quoc-dep-1.jpg">
						</div>
						<div class="col-3-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Hàn Quốc</b>
									</h4 >
									<p class="p" style="font-style: italic;">Hàn Quốc xứ kimchi là nơi du lịch với cảnh đẹp và văn hóa tuyệt vời.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">12.900.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ct-row-2-el-2">
					<div class="el col-1">
						<div class="col-1-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/ninhbinh.jpg">
						</div>
						<div class="col-1-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b > Ninh Bình</b>
									</h4>
									<p class="p" style="font-style: italic;">Tràng An, Tam Cốc, Bích Động là khu du lịch nổi tiếng nhất của Ninh Bình hiện nay..</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">7.600.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-2">
						<div class="col-2-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/hue.jpg">
						</div>
						<div class="col-2-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Huế</b>
									</h4>
									<p class="p" style="font-style: italic;">Nói đến Huế bạn thường nghĩ đến các cung điện, đền đài mang hơi thở cổ xưa một thời vua chúa huy hoàng.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">5.800.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="el col-3">
						<div class="col-3-img">
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/2_1.jpg">
						</div>
						<div class="col-3-ct">
							<div class="ct-op"></div>
							<div class="ct">
								<div class="ct-el-1">
									<h4>
										<b>Quảng Nam</b>
									</h4>
									<p class="p" style="font-style: italic;">Không chỉ có di sản thế giới phố cổ Hội An và Thánh Địa Mỹ Sơn… mà còn sở hữu nhiều bãi biển đẹp.</p>
								</div>
								<div class="ct-el-2">
									<p class="a">
										Giá: <b style="color:#ffa477;">8.000.000VNĐ</b>
									</p>
									<p>
										<i class="fa fa-calendar"></i>17/11/2019
									</p>
									<p>
										<button type="submit">XEM THÊM</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-element-part-3">
			<div class="part-2-row-1 header">
					<h2>Điểm đến yêu thích trong nước</h2>
					<p>Bao la thế giới. Bốn bể là nhà</p>
			</div>
			<div class="part-2-row-2 content">
				<div class="ct-row-1">
					<div class="ct-row-1-col-1">
						<div id="row-1">
							<div class="div">
								<h3>Phú Quốc</h3>
								<p>13 Tour</p>
							</div>
							<img alt=""
								src="${pageContext.request.contextPath}/static/image/Untitled3.png" class="phuquoc">
						</div>
						<div id="row-2">
							<div class="row-2-el">
								<div class="row-2-el-col part-1">
									<div class="row-2-div-1">
										<h3>Vũng Tàu</h3>
										<p>13 Tour</p>
									</div>
									<img alt=""
										src="${pageContext.request.contextPath}/static/image/Bien-Long-Hai-Vung-Tau-1-e1505811221291.png" class="vungtau">
								</div>
								<div class="row-2-el-col part-2">
									<div class="row-2-div-2">
										<h3>Quy Nhơn</h3>
										<p>6 Tour</p>
									</div>
									<img alt=""
										src="${pageContext.request.contextPath}/static/image/1-16.jpg" class="qnhon">
								</div>
							</div>
						</div>
					</div>
					<div class="ct-row-1-col-2">
						<div class="row-1-col-2-div-2">
							<h3>Đà Nẵng</h3>
							<p>9 Tour</p>
						</div>
						<img alt=""
							src="${pageContext.request.contextPath}/static/image/Untitled6.png" class="danang">
					</div>
				</div>
				<div class="ct-row-2">
					
				</div>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div class="footer">
			<div class="container">				 	
			<div class="col-md-2 ftr_navi ftr">
				<h3>Thông Tin</h3>
				<ul>
					<li><a href="index.html">Chúng tôi</a></li>
					<li><a href="gallery.html">Dịch vụ</a></li>
					<li><a href="services.html">Khuyến mãi</a></li>						
					<li><a href="#about" class="scroll">Login</a></li>
					<li><a href="contact.html">Cẩm nang du lịch</a></li>
				</ul>
			</div>
			<div class="col-md-3 ftr_navi ftr">
					 <h3>Thông Tin Cần Biết</h3>
					 <ul>
						 <li><a href="#">Điều kiện & Điều khoản</a></li>
						 <li><a href="#">Quy chế hoạt động</a></li>
						 <li><a href="#">Gold Support</a></li>						
						 <li><a href="#">Câu hỏi thường gặp</a></li>
					 </ul>
			</div>
			<div class="col-md-3 get_in_touch ftr">
				<h3>CHĂM SÓC KHÁCH HÀNG</h3>
				<p>Bảo hiểm Du lịch</p>
				<p>Chính sách giao nhận</p>
				<p>Quy định thanh toán</p>
				<p>Chính sách hủy phạt</p>
				<a href="mailto:info@example.com">www.360viewtour.com</a>
			</div>
			<div class="col-md-4 ftr-logo">
				<a href="index.html"><h3>360°ViewTour</h3></a>
				<ul>
					<li><a href="#" class="facebook"> </a></li>
					<li><a href="#" class="twitter"> </a></li>
					<li><a href="#" class="g"> </a></li>
					<li><a href="#" class="in"> </a></li>
				</ul>
				<p>© 2018 360°ViewTour. Designed<a href="http://w3layouts.com/"></a></p>
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
		</div>
	<script type="text/javascript">
		var myInput=document.getElementById('myInput');
		var menu=document.getElementById('menu');
		var el1=document.getElementById('el1');
		var el2=document.getElementById('el2');
		var el3=document.getElementById('el3');
		var el4=document.getElementById('el4');
		var el5=document.getElementById('el5');
		var el6=document.getElementById('el6');
		var el7=document.getElementById('el7');
		var el8=document.getElementById('el8');
		var el9=document.getElementById('el9');
		var el10=document.getElementById('el10');
		var el11=document.getElementById('el11');
		var el12=document.getElementById('el12');
		var el13=document.getElementById('el13');
		var el14=document.getElementById('el14');
		var el15=document.getElementById('el15');
		var el16=document.getElementById('el16');
		var el17=document.getElementById('el17');
		var el18=document.getElementById('el18');
		var el19=document.getElementById('el19');
		var el20=document.getElementById('el20');
		var el21=document.getElementById('el21');
		var el22=document.getElementById('el22');
		var el23=document.getElementById('el23');
		var el24=document.getElementById('el24');
		var el25=document.getElementById('el25');
		var el26=document.getElementById('el26');
		var el27=document.getElementById('el27');
		var el28=document.getElementById('el28');
		var el29=document.getElementById('el29');
		var el30=document.getElementById('el30');
		var el31=document.getElementById('el31');
		var el32=document.getElementById('el32');
		var el33=document.getElementById('el33');
		var el34=document.getElementById('el34');
		var el35=document.getElementById('el35');
		var el36=document.getElementById('el36');
		var el37=document.getElementById('el37');
		var el38=document.getElementById('el38');
		var el39=document.getElementById('el39');
		var el40=document.getElementById('el40');
		var el41=document.getElementById('el41');
		
		
		myInput.addEventListener('click',function(){
			menu.style.visibility='visible';
		});
		el1.addEventListener('click',function(){
			myInput.value=el1.innerHTML;
			menu.style.visibility='hidden';
		});
		el2.addEventListener('click',function(){
			myInput.value=el2.innerHTML;
			menu.style.visibility='hidden';
		});
		el3.addEventListener('click',function(){
			myInput.value=el3.innerHTML;
			menu.style.visibility='hidden';
		});
		
		el4.addEventListener('click',function(){
			myInput.value=el4.innerHTML;
			menu.style.visibility='hidden';
		});
		el5.addEventListener('click',function(){
			myInput.value=el5.innerHTML;
			menu.style.visibility='hidden';
		});
		el6.addEventListener('click',function(){
			myInput.value=el6.innerHTML;
			menu.style.visibility='hidden';
		});
		el7.addEventListener('click',function(){
			myInput.value=el7.innerHTML;
			menu.style.visibility='hidden';
		});
		el8.addEventListener('click',function(){
			myInput.value=el8.innerHTML;
			menu.style.visibility='hidden';
		});
		el9.addEventListener('click',function(){
			myInput.value=el9.innerHTML;
			menu.style.visibility='hidden';
		});
		el10.addEventListener('click',function(){
			myInput.value=el10.innerHTML;
			menu.style.visibility='hidden';
		});
		el11.addEventListener('click',function(){
			myInput.value=el11.innerHTML;
			menu.style.visibility='hidden';
		});
		el12.addEventListener('click',function(){
			myInput.value=el12.innerHTML;
			menu.style.visibility='hidden';
		});
		el13.addEventListener('click',function(){
			myInput.value=el13.innerHTML;
			menu.style.visibility='hidden';
		});
		el14.addEventListener('click',function(){
			myInput.value=el14.innerHTML;
			menu.style.visibility='hidden';
		});
		el15.addEventListener('click',function(){
			myInput.value=el15.innerHTML;
			menu.style.visibility='hidden';
		});
		el16.addEventListener('click',function(){
			myInput.value=el16.innerHTML;
			menu.style.visibility='hidden';
		});
		el17.addEventListener('click',function(){
			myInput.value=el17.innerHTML;
			menu.style.visibility='hidden';
		});
		
		el18.addEventListener('click',function(){
			myInput.value=el18.innerHTML;
			menu.style.visibility='hidden';
		});
		el19.addEventListener('click',function(){
			myInput.value=el19.innerHTML;
			menu.style.visibility='hidden';
		});
		el20.addEventListener('click',function(){
			myInput.value=el20.innerHTML;
			menu.style.visibility='hidden';
		});
		el21.addEventListener('click',function(){
			myInput.value=el21.innerHTML;
			menu.style.visibility='hidden';
		});
		el22.addEventListener('click',function(){
			myInput.value=el22.innerHTML;
			menu.style.visibility='hidden';
		});
		el23.addEventListener('click',function(){
			myInput.value=el23.innerHTML;
			menu.style.visibility='hidden';
		});el24.addEventListener('click',function(){
			myInput.value=el24.innerHTML;
			menu.style.visibility='hidden';
		});el25.addEventListener('click',function(){
			myInput.value=el25.innerHTML;
			menu.style.visibility='hidden';
		});el26.addEventListener('click',function(){
			myInput.value=el26.innerHTML;
			menu.style.visibility='hidden';
		});el27.addEventListener('click',function(){
			myInput.value=el27.innerHTML;
			menu.style.visibility='hidden';
		});el28.addEventListener('click',function(){
			myInput.value=el28.innerHTML;
			menu.style.visibility='hidden';
		});el29.addEventListener('click',function(){
			myInput.value=el29.innerHTML;
			menu.style.visibility='hidden';
		});el30.addEventListener('click',function(){
			myInput.value=el30.innerHTML;
			menu.style.visibility='hidden';
		});el31.addEventListener('click',function(){
			myInput.value=el31.innerHTML;
			menu.style.visibility='hidden';
		});el32.addEventListener('click',function(){
			myInput.value=el32.innerHTML;
			menu.style.visibility='hidden';
		});el33.addEventListener('click',function(){
			myInput.value=el33.innerHTML;
			menu.style.visibility='hidden';
		});el34.addEventListener('click',function(){
			myInput.value=el34.innerHTML;
			menu.style.visibility='hidden';
		});el35.addEventListener('click',function(){
			myInput.value=el35.innerHTML;
			menu.style.visibility='hidden';
		});el36.addEventListener('click',function(){
			myInput.value=el36.innerHTML;
			menu.style.visibility='hidden';
		});el37.addEventListener('click',function(){
			myInput.value=el37.innerHTML;
			menu.style.visibility='hidden';
		});el38.addEventListener('click',function(){
			myInput.value=el38.innerHTML;
			menu.style.visibility='hidden';
		});
	</script>
</body>
</html>