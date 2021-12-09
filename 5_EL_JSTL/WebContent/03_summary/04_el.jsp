<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 입력 결과(EL)</h2>
	<table>
		<tr>
			<td>${ requestScope.person.name }</td>
			<td></td>
		</tr>
		<tr>
			<td>${ requestScope.person.gender }</td>
			<td></td>
		</tr>
		<tr>
			<td>${ requestScope.person.nai }</td>
			<td></td>
		</tr>
	</table>
</body>
</html>