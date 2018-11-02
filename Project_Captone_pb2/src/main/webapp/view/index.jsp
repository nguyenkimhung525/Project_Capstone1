<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	a{
	cursor:pointer; }
</style>
</head>
<body>
	<input type="text" value="" id="a">
	<a id="Son la">link1</a>
	<a  id="val2">link2</a>
	<a id="val3">link3</a>
	<a id="val4">link4</a>
	<a id="val5">link5</a>
	<script type="text/javascript" >
	 var val1= document.querySelectorAll("a");
	 var text=document.getElementById("a");
		/* val1[0].onclick = function(){
			value.innerHTML="hung";
		};
		val1[1].onclick = function(){
			value.innerHTML="trung";
		}; */
		for (var i = 0; i < val1.length; i++) {
				  val1[i].onclick= function() {
					  text.value=this.getAttribute("id");
			    }
		}
	</script>
</body>
</html>