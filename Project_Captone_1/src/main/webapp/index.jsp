<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<h2>Hello World!</h2>
<c:forEach begin="1" end="5" varStatus="status">
	<c:set var="dem" value="${dem + 1}" scope="page"/>
	   ${status.count}
</c:forEach>
</body>
</html>
