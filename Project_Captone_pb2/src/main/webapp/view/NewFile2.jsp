<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/viewmap.css">
</head>
<body>
	<div class="content">
		<my:handler-contents var="contents" lat="16.099534"></my:handler-contents>
	<h2>${contents.name}</h2>
		<p>Đà Nẵng có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà...</p>
		<div class="ct image">
					<img alt="" src="${pageContext.request.contextPath}/static/image_viewmap/caurong1.jpg">					
		</div>
		<div class="ct view">
			<img alt="" src="${pageContext.request.contextPath}/static/image/view360do.PNG"><i>Chế độ hình ảnh<br/> view 360°</i>
		</div>
	</div>
	
</body>
</html>