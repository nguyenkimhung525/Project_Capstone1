<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	.cd-popup-container{
	height: 500px;
	width: 380px;
	margin:0px auto;
	border: 1px solid transparent;
	background:#e4e4e4;
	border-radius: 5px;
	position: relative;
}
.cd-popup-container .close-v{
	position: absolute;
	right: 2px;
	top:0;
}
.close-v:hover{
	cursor: pointer;
}
.cd-popup-container .header-p{
	width:100%;
	border: 1px solid transparent;
	padding-bottom:7px;
	padding-left: 12px; 
}
.cd-popup-container .content-p div{
	padding: 0 12px;
}
.cd-popup-container .content-p .input{
	margin: 10px 0px;
	height: 25px;
	width: 300px;
	padding: 2px 10px;
}
.cd-popup-container .footer-v{
	position:absolute;
	bottom:0;
	width: 100%;
	border: 1px solid transparent;
}
.cd-popup-container .footer-v button{
	width: 100%;
	border: 0;
	margin-bottom:-4px;
	background: #ff860d;
	color: white;
	margin-left:-14px;
	padding-bottom: 3px; 
}
	
</style>
</head>
<body>
	<div class="cd-popup-container">
			<div class="close-v">
				&#10006;
			</div>
			<div class="header-p">
				<h3><b>Yêu cầu đặt Tour</b></h3>
			</div>
			<div class="content-p">
				<form:form modelAttribute="customer" action="${pageContext.request.contextPath}/booking-tour" method="post">
					<div style="position: relative;">
						Họ & Tên <span style="color: red">*</span>
						<br>
						<form:input path="name" id="name" placeholder="Name" cssClass="input"/>
						<div style="border: 1px solid red;color: red;margin-top: 10px;width: 56%;right:15px;top:0;position: absolute;">
						<form:errors path="name" id="name" cssClass="error"></form:errors> </div>

					</div>
					<div style="margin-top: 7px;position: relative">
						Điện Thoại <span style="color: red">*</span>
						<br>
						<form:input path="phone" id="phone" placeholder="Phone" cssClass="input"/>
						<div style="border: 1px solid red;color: red;margin-top: 10px;width: 56%;right:15px;top:0;position: absolute;">
						<form:errors path="phone" id="phone" cssClass="error"></form:errors></div>
						
					</div>
					<div style="margin-top: 7px;position: relative">
						Email<span style="color: red">*</span>
						<br>
						<form:input path="email" id="email" placeholder="email" cssClass="input"/>
						<div style="border: 1px solid red;color: red;margin-top: 10px;width: 56%;right:15px;top:0;position: absolute;">
						<form:errors path="email" id="email" cssClass="error"></form:errors></div>
						
					</div>
					<div style="margin-top: 7px;">
						Yêu cầu khác<span style="color: red">*</span>
						<br>
						<form:textarea path="note" cssClass="textarea" rows="4" cols="45"/>
					</div>
					<div class="footer-v">
						<button id="req" type="submit"><h3>GỮI YÊU CẦU</h3></button>
					</div>
				</form:form>
			</div>
		</div>
</body>
</html>