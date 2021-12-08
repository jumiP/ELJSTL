<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ param.num1 > param.num2 }">
		${ param.num1 }는 크다, ${ param.num2 }보다
	</c:if>
	<c:if test="${ param.num1 < param.num2 }">
		${ param.num2 }는 크다, ${ param.num1 }보다
	</c:if>
	<c:if test="${ param.num1 == param.num2 }">
		${ param.num1 }는, ${ param.num2 }와 같다
	</c:if>
	<!--  문자형 비교가 되므로 제대로 비교 불가능 -->
	
	<hr>
	
	<!-- 숫자로 형변환 -->
	<c:if test="${ Integer.parseInt(param.num1) > Integer.parseInt(param.num2) }">
		${ param.num1 }는 크다, ${ param.num2 }보다
	</c:if>
	<c:if test="${ Integer.parseInt(param.num1) < Integer.parseInt(param.num2) }">
		${ param.num2 }는 크다, ${ param.num1 }보다
	</c:if>
	<c:if test="${ param.num1 == param.num2 }">
		${ param.num1 }는, ${ param.num2 }와 같다
	</c:if>

</body>
</html>