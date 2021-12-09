<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 입력 결과(JSP표준액션)</h2>
	<table>
	<jsp:useBean id="person" class="action.model.vo.Person">
	<jsp:setProperty property="name" name="person" param="name"/>
	<jsp:setProperty property="gender" name="person" param="gender"/>
	<jsp:setProperty property="nai" name="person" param="age"/>
	</jsp:useBean>
		<tr>
			<td>성명 : <jsp:getProperty property="name" name="person"/></td>
			<td></td>
		</tr>
		<tr>
			<td>성별 : <jsp:getProperty property="gender" name="person"/> </td>
			<td></td>
		</tr>
		<tr>
			<td>나이 : <jsp:getProperty property="nai" name="person"/> </td>
			<td></td>
		</tr>
	</table>
</body>
</html>