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
	<h1>jstl core라이브러리</h1>
	<p>
		사용할 태그 라이브러리 선언하기 : taglib 지시자 사용<br>
		prefix : 앞첨자, 다른 태그와 구분할 수 있는 name space<br>
		uri : 실제 웹상 주소가 아니라 태그 라이브러리를 나타내는 식별자<br>
	</p>
	<h2>c:set태그</h2>
	<c:set var="no1" value="${ param.num1 }"/>
	<c:set var="no2" value="${ param.num2 }"/>
	
	${ param.num1 }
	${ param.num2 }
	${ no1 }
	${ no2 }<br>
	
	<br>
	
	<c:set var="result" value="${ no1 * no2 }"/>
	${ no1 } 곱하기 ${ no2 }의 값은? ${ result }입니다.
	
	<hr>
	
	<h2>c:remove태그</h2>
	<p>지정한 변수를 모든 scope에서 검색해 삭제하거나 지정한 scope에서 삭제</p>
	<c:set var="result" value="9999" scope="request"/>
	삭제 전 result : ${ result } <br>
	삭제 전 requestScope.result : ${ requestScope.result }<br>
	
	<br>
	
<%-- 	<c:remove var="result"/> --%>
	<c:remove var="result" scope="page"/>
	삭제 후 result : ${ result } <br>
	삭제 후 requestScope.result : ${ requestScope.result }
	
	
</body>
</html>