<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : addcookie.jsp</title>
</head>
<body>
	<h1>쿠키 만들기 예제</h1>
	<hr>
	Cookie cookie = new Cookie("user", "kang"); <br>
	cookie.setMaxAge(2 * 60); //초 단위 : 2분 <br>
	response.addCookie(cookie); <br>
	<%
		Cookie cookie = new Cookie("user", "kang");
		cookie.setMaxAge(2 * 60); //초 단위 : 2분
		response.addCookie(cookie);
	%>
	<hr><a href=addtimecookie.jsp >현재 접속 시각을 쿠키로 추가</a>
</body>
</html>