<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 membervar.jsp</title>
</head>
<body>
	<% int i = 0; %>
	[지역변수] i = <%= ++i %> 
	<p>
	[소속변수] memi = <%= ++memi %>
	<%! int memi = 0; %>
</body>
</html>