<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="banner">
	<div class="banner-right">
		<div style="" class="br-col-1-image">
			<img alt=""
				src="${pageContext.request.contextPath}/static/image/indexheader.jpg">
		</div>
		<div class="br-col-2-op"></div>
		<div class="br-col-2-op-form"></div>
		<div class="br-col-3-form">
			<div class="br-col-2-form-el form">
				<div id="br-row-1-col-1">
					<h4>Tìm kiếm địa điểm du lịch</h4>
				</div>
				<div id="br-row-2-col-1">
					<h5>Cùng những trải nghiệm tuyệt vời</h5>
				</div>
				<div id="br-row-3-col-1">	
					<form action="${pageContext.request.contextPath}/viewmap" method="post">
						<div class="child input">
							<i class="fa fa-map-marker a"></i> <input class="input-field"
							id="myInput" type="text" name="tourname" placeholder="Nhập tên thành phố...">
						</div>
						<div class="child button">
							<button type="submit">
								<i class="fa fa-search"></i> Tìm Kiếm
							</button>
						</div>
					</form>
					<div class="br-row-3-col-1-menu" id="menu">
						<div class="menu-header">
							<b>Lựa Chọn Thành Phố</b>
						</div>
						<div class="menu-col-1">
							<strong>- MIỀN BẮC</strong>
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Hà Nội">Hà
										Nội</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Hạ Long">Hạ
										Long</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Quảng Ninh">Quảng
										Ninh</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Sapa">Sapa</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Sơn La">Sơn
										La</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Hải Phòng">Hải
										Phòng</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Ninh Bình">Ninh
										Bình</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Hòa Bình">Hòa
										Bình</a></li>
							</ul>
							<strong>- MIỀN NAM</strong>
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="TP.HCM">TP.HCM</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Cần Thơ">Cần
										Thơ</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Tây Ninh">Tây
										Ninh</a></li>
							</ul>
						</div>
						<div class="menu-col-2">
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Miền Tây">Miền
										Tây</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Đà Lạt"> Đà
										Lạt</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Phú Quốc">Phú
										Quốc</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Nam Du">Nam
										Du</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Q.Đ Bà Lụa">Q.Đ
										Bà Lụa</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Vũng Tàu">Vũng
										Tàu</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Cô Đảo">Cô
										Đảo</a></li>
							</ul>
							<strong>- MIỀN TRUNG</strong>
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Phan Thiết">Phan
										Thiết</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Nha Trang">Nha
										Trang</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Đà Lạt">Đà
										Lạt</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Tây Nguyên">Tây
										Nguyên</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Đà Nẵng-Hội An">Đà
										Nẵng-Hội An</a></li>

							</ul>
						</div>
						<div class="menu-col-3">
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Huế">Huế</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Mỹ Sơn">Mỹ
										Sơn</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Phan Rang">Phan
										Rang</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Quảng Bình">Quảng
										Bình</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Ninh Thuận">Ninh
										Thuận</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Quy Nhơn">Quy
										Nhơn</a></li>
							</ul>
							<strong>- CHÂU Á-ÂU</strong>
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Campuchia">Campuchia</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Đài Loan">Đài
										Loan</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Hàn Quốc">Hàn
										Quốc</a></li>
								<li><i class="fa fa-pagelines"></i><a id="HongKong">HongKong</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Malaysia">Malaysia</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Myanmar">Myanmar</a></li>

							</ul>
						</div>
						<div class="menu-col-4">
							<ul>
								<li><i class="fa fa-pagelines"></i><a id="Nhật Bản">Nhật
										Bản</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Singapore">Singapore</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Thái Lan">Thái
										Lan</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Brunei">Brunei</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Indonesia">Indonesia</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Philippines">Philippines</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Ấn Độ">Ấn Độ</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Bhutan">Bhutan</a></li>
								<li><i class="fa fa-pagelines"></i><a id="Kazakhstan">Kazakhstan</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<div style="clear: both;"></div>
<div class="content">
	<div class="content-element-part-1">
		<div class="ct-part-1-br"></div>
		<div class="header-hd">
			<div class="ct-row-1 header">
				<h2 style="padding-bottom: 5px;">Địa điểm nổi bật</h2>
				<div></div><br>
				<p>Trải dọc dải đất hình chữ S là sự kết hợp hài hòa giữa
				 các thắng cảnh tự nhiên và công trình kiến trúc tinh tế đáng
				  để trải nghiệm ít nhất một lần trong đời.  </p>
			</div>
		</div>
		<div class="ct-row-2">
			<div class="ct-row-2-el-1">
				<div class="el col-1 ">
					<div class="col-1-img">
						<img alt=""
							src="https://interfacetoursandtravel.com/wp-content/plugins/travel-agency-companion//includes/images/img4.jpg">
					</div>
					<div class="col-1-ct">
						<div class="ct-op-ct-r"></div>
						<div class="ct-op"></div>
						<div class="ct">
							<div class="ct-el-1">
								<h4>
									<b>Nha Trang</b>
								</h4>
								<p class="p" style="font-style: italic;">một bức tuyệt tác
									của tự nhiên và con người với nhiều địa điểm du lịch Nha Trang
									nổi tiếng.</p>
							</div>
							<div class="ct-el-2">
								<p class="ct-el-2-childfirst">
									<span>Giá: <b style="color: #ffa477;">5.900.000VNĐ</b></span>
								</p>
								<p class="ct-el-2-child-2">
									<i class="fa fa-calendar"></i>17/11/2019
								</p>
								<p class="ct-el-2-child-3">
									<button type="submit">XEM THÊM</button>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="el col-2">
					<div class="col-2-img">
						<img alt=""
							src="https://interfacetoursandtravel.com/wp-content/plugins/travel-agency-companion//includes/images/img3.jpg">
					</div>
					<div class="col-2-ct">
						<div class="ct-op-ct-r"></div>
						<div class="ct-op"></div>
						<div class="ct">
							<div class="ct-el-1">
								<h4>
									<b>Singapore</b>
								</h4>
								<p class="p" style="font-style: italic;">Singapore nổi tiếng
									với rất nhiều chương trình biểu diễn nhạc nước hấp dẫn.Thành phố tuyệt đẹp về đêm</p>
							</div>
							<div class="ct-el-2">
								<p class="ct-el-2-childfirst">
									Giá: <b style="color: #ffa477;">10.999.000VNĐ</b>
								</p>
								<p class="ct-el-2-child-2" style="display:block;margin-top:5px">
									<i class="fa fa-calendar"></i>17/11/2019
								</p>
								<p class="ct-el-2-child-3">
									<button type="submit">XEM THÊM</button>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="el col-3">
					<div class="col-3-img">
						<img alt=""
							src="https://interfacetoursandtravel.com/wp-content/plugins/travel-agency-companion//includes/images/img6.jpg">
					</div>
					<div class="col-3-ct">
											<div class="ct-op-ct-r"></div>
						<div class="ct-op"></div>
						<div class="ct">
							<div class="ct-el-1">
								<h4>
									<b>Đài Loan</b>
								</h4>
								<p class="p" style="font-style: italic;">Đài Loan không chỉ
									được biết đến như Mãnh hổ kinh tế của Châu Á mà còn là điểm đến
									du lịch hấp dẫn.</p>
							</div>
							<div class="ct-el-2">
								<p class="ct-el-2-childfirst">
									Giá: <b style="color: #ffa477;">7.600.000VNĐ</b>
								</p>
								<p class="ct-el-2-child-2" style="display:block;margin-top:5px">
									<i class="fa fa-calendar"></i>17/11/2019
								</p>
								<p class="ct-el-2-child-3">
									<button type="submit">XEM THÊM</button>
								</p>
							</div>
						</div>
					</div>
					
				</div>
				<div class="el col-4">
					<div class="col-4-img">
						<img alt=""
							src="https://interfacetoursandtravel.com/wp-content/plugins/travel-agency-companion//includes/images/img5.jpg">
					</div>
					<div class="col-4-ct">
						<div class="ct-op"></div>
						<div class="ct">
							<div class="ct-el-1">
								<h4>
									<b>Đà Nẵng</b>
								</h4>
								<p class="p" style="font-style: italic;">danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà,
									bán đảo Sơn Trà...</p>
							</div>
							<div class="ct-el-2">
								<p class="ct-el-2-childfirst">
									Giá: <b style="color: #ffa477;">7.600.000VNĐ</b>
								</p>
								<p class="ct-el-2-child-2" style="display:block;margin-top:5px">
									<i class="fa fa-calendar"></i>17/11/2019
								</p>
								<p class="ct-el-2-child-3">
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
		<div class="ct-part-1-br"></div>
		<div class="part-2-row-1 header">
			<h2>Điểm đến yêu thích trong nước</h2>
			<div></div>	
			<p style="display: block;margin-top: 5px;">Không cần phải đi du lịch nước ngoài, Việt Nam còn rất nhiều những cảnh đẹp không thua gì tranh vẽ. Bạn chỉ cần lựa chọn địa điểm rồi xách ba lô lên và đi.</p>
		</div>
		<div class="part-2-row-2 content">
			<div class="ct-row-1">
				<div class="ct-row-1-col-1">
					<div id="row-1">
						<div class="div">
							<h3>Phú Quốc</h3>
							<p>13 Tour</p>
						</div>
						<a><img alt=""
							src="${pageContext.request.contextPath}/static/image/Untitled3.png"
							class="phuquoc"></a>

					</div>
					<div id="row-2">
						<div class="row-2-el">
							<div class="row-2-el-col part-1">
								<div class="row-2-div-1">
									<h3>Vũng Tàu</h3>
									<p>13 Tour</p>
								</div>
								<a><img alt=""
									src="${pageContext.request.contextPath}/static/image/Bien-Long-Hai-Vung-Tau-1-e1505811221291.png"
									class="vungtau"></a>

							</div>
							<div class="row-2-el-col part-2">
								<div class="row-2-div-2">
									<h3>Quy Nhơn</h3>
									<p>6 Tour</p>
								</div>
								<a><img alt=""
									src="${pageContext.request.contextPath}/static/image/1-16.jpg"
									class="qnhon"></a>
							</div>
						</div>
					</div>
				</div>
				<div class="ct-row-1-col-2">
					<div class="row-1-col-2-div-2">
						<h3>Đà Nẵng</h3>
						<p>9 Tour</p>
					</div>
					<a><img alt=""
						src="${pageContext.request.contextPath}/static/image/Untitled6.png"
						class="danang"></a>
				</div>
			</div>
			<div class="ct-row-2"></div>
		</div>
	</div>
	<div class="content-element-part-4">
		<div class="part-4-el-br">
		</div>
		<div class="part-4-el-content">
			<div class="col-1 el-1">
				<div class="image"><img alt="" src="${pageContext.request.contextPath}/static/image/singapore-2014-150463478_singapore_s.jpg"></div>
				<p><h4>Du lịch Singapore 3N4D...</h4></p>
				<p>Giá:&nbsp<b style="color: #ff9e3e;">16.600.000VNĐ</b></p>
			</div>
			<div class="col-1 el-2">
				<img alt="" src="${pageContext.request.contextPath}/static/image/hinhanhheader1.jpg">
				<p><h4>Du lịch Nha Trang 4N3D...</h4></p>
				<p>Giá:&nbsp <b style="color: #ff9e3e;">8.600.000VNĐ</b></p>
			</div>
			<div class="col-1 el-3">
				<div class="image"><img alt="" src="${pageContext.request.contextPath}/static/image/Halong-Main-picture.jpg"></div>
				<p><h4>Du lịch Hạ Long Bay 5N4D...</h4></p>
				<p>Giá:&nbsp<b style="color: #ff9e3e;">8.900.000VNĐ</b></p>
			</div>
			<div class="col-1 el-4">
				<div class="image"><img alt="" src="${pageContext.request.contextPath}/static/image/IMG_1153.jpg"></div>
				<p><h4>Du lịch Quy Nhơn 3N2D...</h4></p>
				<p>Giá:&nbsp <b style="color: #ff9e3e;">6.800.000VNĐ</b></p>
			</div>
		</div>
		
	</div>
</div>