<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : getcookies.jsp</title>
</head>
<body>
	<h1>쿠키 조회 예제</h1>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies == null) {
			out.println("쿠키가 없습니다.");
		} else {
			/*
			for (int i=0; i<cookies.length; ++i) {
				out.println("쿠키 이름(name) : " + cookies[i].getName() + ", " );
				out.println("쿠키 값(value) : " + cookies[i].getValue() + "<br>" );
			}
			*/
			for (Cookie c : cookies) {
				out.println("쿠키 이름(name) : " + c.getName() + ", " );
				out.println("쿠키 값(value) : " + c.getValue() + "<br>" );
			}
		}
	%>
</body>
</html>