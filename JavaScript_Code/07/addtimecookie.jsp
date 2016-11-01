<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : addtimecookie.jsp</title>
</head>
<body>
	<h1>현재 시각을 쿠키로 저장</h1>
	<hr>
	String now = new java.util.Date().toString(); <br>
	Cookie cookie = new Cookie("lastconnect", now); <br>
	cookie.setMaxAge(10); //초 단위 : 10초  <br>
	response.addCookie(cookie); <br>
	<%
		String now = new java.util.Date().toString();
		Cookie cookie = new Cookie("lastconnect", now); 
		cookie.setMaxAge(10); //초 단위 : 10초
		response.addCookie(cookie);
	%>
	<hr><a href=getcookies.jsp >쿠키 조회</a>
</body>
</html>