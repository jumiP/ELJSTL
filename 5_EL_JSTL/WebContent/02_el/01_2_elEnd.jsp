<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="action.model.vo.Person"%>
<%
	Person person = (Person)request.getAttribute("person");
	String beverage = (String)request.getAttribute("beverage");
	int year = (int)request.getAttribute("year");
	String[] products = (String[])request.getAttribute("products");
	String book = (String)request.getAttribute("book");
	String movie = (String)request.getAttribute("movie");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>scriptlet을 통해 request객체에 저장된 데이터 출력하기</h2>
	
	<h4>개인정보(<%=year %>)</h4>
	이름 : <%=person.getName() %><br>
	성별 : <%=person.getGender() %><br>
	나이 : <%=person.getNai() %><br>
	<h4>취향 정보</h4>
	<%=person.getName() %>님이 가장 좋아하는 음료 : <%=beverage %><br>
	<%=person.getName() %>님이 가장 좋아하는 물건 : <%=products[0] %>, <%=products[1] %>, <%=products[2] %><br>
	<%=person.getName() %>님이 가장 좋아하는 도서 : <%=book %><br>	<!-- 없는 영역에서 가져옴 -->
	<%=person.getName() %>님이 가장 좋아하는 도서 : <%=session.getAttribute("book") %><br>
	<%=person.getName() %>님이 가장 좋아하는 영화 : <%=movie %><br>	<!-- 없는 영역에서 가져옴 -->
	<%=person.getName() %>님이 가장 좋아하는 영화 : <%=application.getAttribute("movie") %><br>
	<!-- book, movie는 각각  session, application영역에 존재하는데 값을 가져온건 request영역이기 때문에 null이 출력됨 -->
	
	<hr>
	
	<h2>el의 내장객체 XXXScope를 통해 저장된 데이터 출력하기</h2>
	
	<h4>개인정보(${ requestScope.year })</h4>
	이름 : ${ requestScope.person.name }<br>
	성별 : ${ requestScope.person.gender }<br>
	나이 : ${ requestScope.person.nai }<br>
	<h4>취향 정보</h4>
	${ requestScope.person.name }님이 가장 좋아하는 음료 : ${ requestScope.beverage }<br>
	${ requestScope.person.name }님이 가장 좋아하는 물건 : ${ requestScope.products[0]}, ${ requestScope.products[1]}, ${ requestScope.products[2]}<br>
	${ requestScope.person.name }님이 가장 좋아하는 도서 : ${ requestScope.book }<br> <!-- 없는 영역에서 가져옴 -->
	${ requestScope.person.name }님이 가장 좋아하는 도서 : ${ sessionScope.book }<br>
	${ requestScope.person.name }님이 가장 좋아하는 영화 : ${ requestScope.movie }<br> <!-- 없는 영역에서 가져옴 -->
	${ requestScope.person.name }님이 가장 좋아하는 영화 : ${ applicationScope.movie }<br>
	
	<hr>
	
	<h2>scope 생략하여 데이터 출력하기</h2>
	<p>
		el내장객체 pageScope, requestScope, sessionScope, applicationScope는 생략 가능 <br>
		pageScope, requestScope, sessionScope, applicationScope 순으로 찾음
		여러 scope에 동일한 속성을 기록해서 이름 충돌이 의심되면 명시적으로 scope를 지정해야 해당 scope의 속성을 가져올 수 있음
	</p>
	<h4>개인정보(${ year })</h4>
	이름 : ${ person.name }<br>
	성별 : ${ person.gender }<br>
	나이 : ${ person.nai }<br>
	<h4>취향 정보</h4>
	${ person.name }님이 가장 좋아하는 음료 : ${ beverage }<br>
	${ person.name }님이 가장 좋아하는 물건 : ${ products[0]}, ${ products[1]}, ${ products[2]}<br>
	${ person.name }님이 가장 좋아하는 도서 : ${ book }<br> 
	${ person.name }님이 가장 좋아하는 도서 : ${ book }<br>
	${ person.name }님이 가장 좋아하는 영화 : ${ movie }<br> 
	${ person.name }님이 가장 좋아하는 영화 : ${ movie }<br>
	
</body>
</html>