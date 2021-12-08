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
	<c:if test="${ param.str1 == param.str2 }">
		${ param.str1 }은 ${ param.str2 }와 같다
	</c:if>
	<c:if test="${ param.str1 != param.str2 }">
		${ param.str1 }은 ${ param.str2 }와 같지 않다
	</c:if>
	
	<hr>
	
<%-- 	<c:if test="${ param.str1 eq param.str2 }"> --%>
	<c:if test="${ param.str1.equals(param.str2) }">
		${ param.str1 }은 ${ param.str2 }와 같다
	</c:if>
<%-- 	<c:if test="${ param.str1 ne param.str2 }"> --%>
	<c:if test="${ !param.str1.equals(param.str2) }">
		${ param.str1 }은 ${ param.str2 }와 같지 않다
	</c:if>
</body>
</html>