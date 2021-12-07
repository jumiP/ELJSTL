<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP표준액션태그 중 useBean의 param속성 이용하기</h2>
	<!--  person이라는 이름의 Person객체 생성하기 -->
	<jsp:useBean id="person" class="action.model.vo.Person">
<%-- 		<jsp:setProperty property="name" name="person" param="name"/> --%>
<%-- 		<jsp:setProperty property="gender" name="person" param="gender"/> --%>
<%-- 		<jsp:setProperty property="nai" name="person" param="nai"/> --%>
		
<%-- 		<jsp:setProperty property="name" name="person" /> --%>
<%-- 		<jsp:setProperty property="gender" name="person"/> --%>
<%-- 		<jsp:setProperty property="nai" name="person"/> --%>
		
		<jsp:setProperty property="*" name="person"/>
	</jsp:useBean>
	
	이름 : <jsp:getProperty property="name" name="person"/><br>
	성별 : <jsp:getProperty property="gender" name="person"/><br>
	나이 : <jsp:getProperty property="nai" name="person"/><br>
</body>
</html>