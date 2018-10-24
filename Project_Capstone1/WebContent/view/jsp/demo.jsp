<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="${pageContext.request.contextPath}/static/css/main.css"
    rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/demo.js"></script>
</head>
<body>
 <h2>Hi this style is defined in css file</h2>
 
    <P>The time on the server is ${serverTime}.</P>
 
    <br>
    <br>
 
    <img
        src="${pageContext.request.contextPath}/static/image/Chrysanthemum.jpg" />
    <br>
    <br>
    <input type="button" onclick="doSomeWork()" value="Click Me" />
</body>
</html>