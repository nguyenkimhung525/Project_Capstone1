<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<link href="${pageContext.request.contextPath}/static/css/main.css"
	type="text/css" rel="stylesheet">
	
<title>Home Page</title>
</head>
<body>
	<div class="all-container">
		<div class="image-home">
			<img alt="" src="${pageContext.request.contextPath}/static/image/images682811_Anh_2.jpg">
		</div>
		<div class="container">
			<div class="header" style="">
				<div class="header-bg"></div>
				<%@include file="./shared-static/header.jsp"%>
			</div>
			<div class="container-content">	
				<c:if test="${userclick==true}">
					<%@include file="./shared-static/content.jsp" %>
				</c:if>
			</div>
			<div style="clear: both;"></div>
			<div class="footer">
				<%@include file="./shared-static/footer.jsp" %>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var myInput=document.getElementById("myInput");
		var dpmenu=document.getElementById('menu');

		myInput.addEventListener('click',function(){
			dpmenu.style.visibility='visible';
		});
		var menu=document.querySelectorAll("#menu a");
		for (var i = 0; i < menu.length; i++) {
			menu[i].onclick= function() {
				  myInput.value=this.getAttribute("id");
				  dpmenu.style.visibility='hidden';
		    }
	}
	</script>
</body>
</html>