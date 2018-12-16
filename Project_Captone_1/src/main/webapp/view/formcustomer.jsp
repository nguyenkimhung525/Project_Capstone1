<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>form-customer</title><link rel="stylesheet"
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
<link href="${pageContext.request.contextPath}/static/css/customer.css"
	type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div class="header" style="">
		<%@include file="./shared-static/header.jsp"%>
	</div>
	<div class="navigator">
		<div class="header-nav">
			<img alt="" src="${pageContext.request.contextPath}/static/image_viewmap/bautroidn1.png">
			<h2>${forms.head}</h2>
		</div>
		<div class="content-nav">
			<div class="ct-op"></div>
			<div class="ct-header-nav">
				<div class="arrow-step1">
					  <div class="arrowLine"><h4>Booking Tour</h4></div>
					  <div class="triangle_left"></div>
				</div>
				<c:if test="${formtt==true}">
					<c:set value="formtt" var="white"></c:set>
					<c:set var="formttb" value="#009f00"></c:set>
					<c:set var="formttbo" value="#009f00"></c:set>
				</c:if>
				<c:if test="${formtt==false}">
					<c:set var="formtt" value="black"></c:set>
					<c:set var="formttb" value="#efefef"></c:set>
					<c:set var="formttbo" value="#efefef"></c:set>
				</c:if>
				<c:if test="${formht==true}">
					<c:set var="formhtt" value="white"></c:set>
					<c:set var="formhtb" value="#009f00"></c:set>
					<c:set var="formhtbo" value="#009f00"></c:set>
				</c:if>
				<c:if test="${formht==false}">
					<c:set var="formht" value="black"></c:set>
					<c:set var="formhtb" value="#efefef"></c:set>
					<c:set var="formhtbo" value="#efefef"></c:set>
				</c:if>
				<div class="arrow-step2" >
					  <div class="arrowLine2" style="background: ${formttb}"><h4 style="color: ${formtt};">Thông tin khách hàng</h4></div>
					  <div class="triangle_left2" style="border-left:35px solid ${formttbo};"></div>
				</div>
				<div class="arrow-step3">
					  <div class="arrowLine3" style="background-color:${formhtb};"><h4 style="color: ${formhtt};">Đăng ký thành công</h4></div>
					  <div class="triangle_left3" style="border-left:35px solid ${formhtbo};"></div>
				</div>
			</div>
			<div class="ct-content">
			<form action="${pageContext.request.contextPath}/add-customer" method="post">
				<c:if test="${formdetails==true}">
					<%@include file="./shared-static/formdetails.jsp"%>
				</c:if>
				<c:if test="${formcust==true}">
					<%@include file="./shared-static/form-cus.jsp"%>
				</c:if>
				<c:if test="${formsubb==true}">
					<%@include file="./shared-static/form-sub.jsp"%>
				</c:if>
			</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="./shared-static/footer.jsp" %>
	</div>
	<script type="text/javascript">
	var store=0;
	var row_22=document.querySelector('.element-2');
	var value=parseInt(${forms.price});
	var str=value.toString();
	var last=str.length;
	var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
    document.getElementById("price").innerHTML=PRICE_VND;
	var TOTAL=0;
	var TOTAL1=0;
	var root=0;
	document.getElementById("myNumber").value=${countperson};
	document.getElementById("myNumber_te").value=${counttiny};
	document.getElementById("myNumber_eb").value=0;
	var pricetour=document.getElementById("pricetour");
	pricetour.value=${forms.price};
	function myFunction(){
	    var x = document.getElementById("myNumber").value;
	    if(store<x){
	    	root=0;
	    	root=parseInt(TOTAL1)+parseInt(value)*((parseInt(x))-((1-75/100)*(x-1)));
	    	console.log('root: '+root);
	    }
	    else if(store>x){
	    	var root=0;
	    	root=parseInt(TOTAL1)+parseInt(value)*((parseInt(x))-((1-75/100)*(x-1)));
	    }
	    store=x;
	    if(x==0){
	    	TOTAL=0;
	    }
	    else TOTAL=root-value-TOTAL1;
	    if(root==value){
	    	pricetour.value=value;
	    	var str=value.toString();
			var last=str.length;
			var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
		    document.getElementById("price").innerHTML=PRICE_VND;
	    }
	    if(root>=10000000){
	    	pricetour.value=root;
	    	 	var str1=root.toString();
				var last=str1.length;
				var PRICE_VND=str1.substring(0,2)+'.'+str1.substring(2,5)+'.'+str1.substring(5,str1.length);
				document.getElementById("price").innerHTML=PRICE_VND;
	    }
	   
	}myFunction();
	var store1=0;
	var root1=0;
	function myFunction_te(){
	    var xx = document.getElementById("myNumber_te").value;

	    if(store1<xx){
	    	root1=0;
	    	root1=parseInt(TOTAL)+parseInt(value)*((parseInt(xx)+parseInt(1))-((1-50/100)*(xx)));
	    	console.log('x1: '+xx);
	    }
	    else if(store1>xx){
	    	 root1=0;
	    	root1=parseInt(TOTAL)+parseInt(value)*((parseInt(xx)+parseInt(1))-((1-50/100)*(xx)));
	    }
	    store1=xx;
	    if(xx==0){
	    	TOTAL1=0;
	    }	
	    else{
	    	TOTAL1=root1-value-TOTAL;
	    }
	    if(root1==value){
	    	pricetour.value=value;
	    	var str=value.toString();
			var PRICE_VND=str.substring(0,1)+'.'+str.substring(1,4)+'.'+str.substring(4,str.length);
		    document.getElementById("price").innerHTML=PRICE_VND;
	    }
	    if(root1>=10000000){
	    	pricetour.value=root1;
	    	 var str2=root1.toString();
				var PRICE_VND=str2.substring(0,2)+'.'+str2.substring(2,5)+'.'+str2.substring(5,str2.length);
				document.getElementById("price").innerHTML=PRICE_VND;
	    }
	}
	myFunction_te();
	</script>
</body>
</html>