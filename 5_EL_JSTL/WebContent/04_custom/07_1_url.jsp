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
	<c:url value="07_2_urlEnd.jsp" var="u">
		<c:param name="pname" value="화분"></c:param>
		<c:param name="pcount" value="2"></c:param>
		<c:param name="option" value="자갈 추가"></c:param>
		<c:param name="option" value="영양제 추가"></c:param>
	</c:url>
	<a href="${ u }">이동</a>
</body>
</html>