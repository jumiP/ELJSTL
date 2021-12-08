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
	<c:forEach var="i" begin="1" end="6">
		<h${ i }>반복문</h${ i }>
	</c:forEach>
	<hr>
	<c:forEach var="i" begin="1" end="6" step="2">
		<h${ i }>반복문</h${ i }>
	</c:forEach>
	
	<hr>
	
	<!-- 역순으로 출력 -->
	<c:forEach var="i" begin="1" end="6" varStatus="vs">
		<h${ 7 - i }>반복문</h${ 7 - i }>
		vs.first : ${ vs.first } <br>
		vs.last : ${ vs.last } <br>
		vs.index : ${ vs.index } <br>
		vs.count : ${ vs.count } <br>
		vs.current : ${ vs.current } <br>
	</c:forEach>
	
</body>
</html>