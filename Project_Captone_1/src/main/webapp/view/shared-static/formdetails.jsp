	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="ct-col element-2">
					<div class="header-view">
						<h4 id="demo">${forms.head}</h4>
						
					</div>
					<div class="content-view">
						<div class="row-1-img">
							<img src="${pageContext.request.contextPath}/static/image-booking/${forms.image}" alt="">
						</div>
						<div class="row-2-ct">
							<p><i class="fa fa-barcode"></i>Mã Tour&nbsp;: &nbsp;<span style="color: #7e7e7e;"><input type="text" name="id" class="idtour" disabled="disabled" value="${forms.id}"/></span></p>
							<p><i class="fa fa-calendar-minus-o"></i>Ngày Đi&nbsp;:&nbsp; <span style="color: #7e7e7e;"><input type="text" id="startdate"  disabled="disabled" name="startdate" value="${forms.startdate}"/></span></p>
							<p><i class="fa fa-calendar-plus-o"></i>Ngày Về&nbsp;:&nbsp; <span style="color: #7e7e7e;"><input disabled="disabled" type="text" id="enddate" name="enddate" value="${forms.enddate}"/></span></p>
							<p><i class="fa fa-calendar"></i>Thời Gian&nbsp;:&nbsp;<span style="color: #7e7e7e;"><input disabled="disabled" type="text" id="totaldate" name="totaldate" value="${forms.totaldate}"/></span>
							</p>
							<p><i class="fa fa-user-plus"></i>Số Người Lớn&nbsp;:&nbsp;<input type="number" name="countperson" oninput="myFunction()" id="myNumber" value="0" min="0" max="100"></p>
							<p><i class="fa fa-male" style="font-size: 18px;"></i>Số Trẻ Em&nbsp;:&nbsp;<input name="counttiny"  style="margin-left: 23px;" type="number"   oninput="myFunction_te()" id="myNumber_te" value="0"  min="0" max="100"></p>
							<p><i class="fa fa-child" style="font-size: 18px;"></i></i>Em Bé&nbsp;:&nbsp;<input name="countchild" style="margin-left: 41px;" type="number"   oninput="myFunction_eb()" id="myNumber_eb" value="0"  min="0" max="100"></p>
							
							<div class="last-child"></div>
							<div style="margin-left: 5px;">
								<h3>
									Tổng&nbsp;:&nbsp;<span ><b  id="price" style="color:#ff9b2d "></b></span><span style="color: #ff9b2d"><b><input type="hidden" name="price2" value="1" id="pricetour">VNĐ</b></b></span>
								</h3>
							</div>
						</div>
					</div>	
				</div>