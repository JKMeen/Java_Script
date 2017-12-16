<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 getrequest.jsp</title>
</head>
<body>

<h2> 메소드 get 방식에서 한글 처리</h2>
<hr>
한글 성명 : <%= request.getParameter("korname")%><p>
영문 성명 : <%= request.getParameter("engname")%><p>

</body>
</html>