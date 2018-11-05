<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
function setcontentString(index){
	   var contentString='<div class="content">'+
			'<h2>Đà Nẵng - Phố Cổ Hội An</h2>'+
			'<p>Đà Nẵng có nhiều danh'+index+' thắng tuyệt đẹp say lòng du"khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà...</p>'+
			'<div class="ct image">'+index+
			'</div>'+
			'<div class="ct view">'+
				'<a href="view/View360.jsp"><img alt="" src="${pageContext.request.contextPath}/static/image/view360do.PNG"><i>Chế độ hình ảnh<br/> view 360°</i>'+
			'</div>'+
		'</div>';
		return contentString;
};

document.write(setcontentString(2));
document.open(); 
		</script>

</body>
</html>