<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<link href="${pageContext.request.contextPath}/static/css/login.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="ct-header">
				<h3>Member Login</h3>
			</div>
			<c:if test="${visibility==true}">
				<c:set var="visibility" value="visible"></c:set>
			</c:if>
			<c:if test="${visibility==false}">
				<c:set var="visibility" value="hidden"></c:set>
			</c:if>
			<div class="ct-content">
				
				<form:form modelAttribute="login" action="${pageContext.request.contextPath}/form-admin" method="post">
					<div class="ct-row-1">
						<i class='fas fa-user-lock'></i>
							<form:input path="username" id="username" cssClass="input"  placeholder="Your username or email"/>						
					</div>
					<div style="border: 1px solid transparent;margin-left: 20px;margin-top: 8px;color: red;"><form:errors path="username"></form:errors></div>
					<div class="ct-row-2">
						<i class="material-icons">lock</i>
							<form:input path="password" id="password" cssClass="input" placeholder="Your password"/>
					</div>
					<div style="border: 1px solid transparent;margin-left: 20px;margin-top: 8px;color: red;"><form:errors path="password"></form:errors>
					
					</div>
					<div class="ct-row-3">
						<form:button type="submit" id="button">Log in</form:button>
					</div>
				</form:form>
			</div>
		
		</div>
	</div>
</body>
</html>