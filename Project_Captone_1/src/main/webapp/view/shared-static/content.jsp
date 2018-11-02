<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										<h4>Tà Năng Phan Dũng – cung trekking đẹp nhất Việt Nam</h4>
										<p>Cung đường với những ngọn đồi, thảo nguyên xanh mướt
											màu cỏ sẽ khiến bạn gác lại tất cả những âu lo, bộn bề của
											cuộc sống hàng ngày mà thả mình thư giãn giữa thiên nhiên đất
											trờ</p>
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
										<p>Được mệnh danh là "thành phố sương mù" hay "thành phố
											mộng mơ", Đà Lạt hấp dẫn khách du lịch với sự lãng mạn, khí
											hậu dễ chịu cùng những địa điểm tham quan thú vị.Dân yêu
											Phượt mê mẩn bởi vẻ đẹp tình tứ của nó.</p>
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
										<p>một công trình mới của Sun World Bà Nà H ills. Được
											khởi công xây dựng vào 07/2017 tới 0 4/2018 thì hoàn thành,
											thời gian gần đây đã đi vào hoạt động và đón những lượt khách
											tham quan d u lịch Đà Nẵng đầu tiên.Sở hữu thiết kế vô cùng
											độc đáo và mới lạ, chưa từng có ở Việt Nam</p>
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
								<p class="p" style="font-style: italic;">một bức tuyệt tác
									của tự nhiên và con người với nhiều địa điểm du lịch Nha Trang
									nổi tiếng.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">5.900.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Singapore nổi tiếng
									với rất nhiều chương trình biểu diễn nhạc nước hấp dẫn</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">10.999.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Đài Loan không chỉ
									được biết đến như Mãnh hổ kinh tế của Châu Á mà còn là điểm đến
									du lịch hấp dẫn.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">7.600.000VNĐ</b>
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
									<b>Nhật Bản </b>
								</h4>
								<p class="p" style="font-style: italic;">Nhật Bản, xứ sở hoa
									anh đào, vẫn luôn là nơi thu hút rất nhiều khách du lịch trên
									thế giới.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">17.900.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">nơi con người thân
									thiện và vui vẻ, đất nước nhiệt đới độc đáo, nền văn hóa và
									lịch sử lâu đời.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">8.600.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Đà Nẵng có nhiều
									danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà,
									bán đảo Sơn Trà...</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">6.800.000VNĐ</b>
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
			<p>Lên rừng xuống biển. Trọn vẹn Việt Nam</p>
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
								<p class="p" style="font-style: italic;">Đà Nẵng có nhiều
									danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà,
									bán đảo Sơn Trà...</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">6.800.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Thắng cảnh nổi
									tiếng với vẻ đẹp hoang sơ.Bạn sẽ có những góc chụp hình và ngắm
									cảnh tuyệt đẹp.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">5.000.000VNĐ</b>
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
								</h4>
								<p class="p" style="font-style: italic;">Hàn Quốc xứ kimchi
									là nơi du lịch với cảnh đẹp và văn hóa tuyệt vời.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">12.900.000VNĐ</b>
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
									<b> Ninh Bình</b>
								</h4>
								<p class="p" style="font-style: italic;">Tràng An, Tam Cốc,
									Bích Động là khu du lịch nổi tiếng nhất của Ninh Bình hiện
									nay..</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">7.600.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Nói đến Huế bạn
									thường nghĩ đến các cung điện, đền đài mang hơi thở cổ xưa một
									thời vua chúa huy hoàng.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">5.800.000VNĐ</b>
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
								<p class="p" style="font-style: italic;">Không chỉ có di sản
									thế giới phố cổ Hội An và Thánh Địa Mỹ Sơn… mà còn sở hữu nhiều
									bãi biển đẹp.</p>
							</div>
							<div class="ct-el-2">
								<p class="a">
									Giá: <b style="color: #ffa477;">8.000.000VNĐ</b>
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
</div>