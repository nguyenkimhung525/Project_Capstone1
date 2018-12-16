	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="content-form-cus">
					<form:form modelAttribute="customer" action="${pageContext.request.contextPath}/add-customer" method="post">
					<div class="element col1">
							<div style="position: relative;">
							<i>Họ & Tên</i> <span style="color: red">*</span>
							<br>
							<div id="errorname" style="display:block ;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
								<form:errors path="name"></form:errors>
							</div>
							<form:input path="name"  id="name" placeholder="Name"/>
						</div>
						<div style="margin-top: 30px;position: relative">
							<i>Điện Thoại</i> <span style="color: red">*</span>
							<br>
							<div id="error-phone" style="display:block;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
								<form:errors path="phone"></form:errors>
							</div>
							<form:input path="phone"  id="phone" placeholder="Điện Thoại"/>
						</div>
					</div>
					<div class="element col2">
							<div style="position: relative;">
							<i>Địa Chỉ</i> <span style="color: red">*</span>
							<br>
							<div id="errorname" style="display:block; ;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
								<form:errors path="address"></form:errors>
							</div>
							<form:input path="address"  id="diachi" placeholder="Địa Chỉ"/>
						</div>
						<div style="margin-top: 30px;position: relative">
							<i>Địa Chỉ Email</i> <span style="color: red">*</span>
							<br>
							<div id="error-phone" style="display:block;font-size:13px;border: 1px solid transparent;color: red;text-align:right;margin-top: 10px;width: 50%;right:15px;top:0;position: absolute;">
								<form:errors path="email"></form:errors>
							</div>
							<form:input path="email"  id="email" placeholder="Địa Chỉ"/>
						</div>
					</div>
					<div style="clear: both;"></div>
					<div class="submit">
						<button type="submit">Đăng Ký</button>
					</div>
					</form:form>
				</div>