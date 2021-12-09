<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="action.model.vo.Person"%>
<%
	Person person = (Person)request.getAttribute("person");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 입력 결과(scriptlet)</h2>
	<table>
		<tr>
			<td><%=person.getName() %></td>
			<td></td>
		</tr>
		<tr>
			<td><%=person.getGender() %></td>
			<td></td>
		</tr>
		<tr>
			<td><%=person.getNai() %></td>
			<td></td>
		</tr>
	</table>

</body>
</html>