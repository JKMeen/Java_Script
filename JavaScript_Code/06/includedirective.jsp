<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : includedirective.jsp</title>
</head>
<body>
	<% int i = 12; %>
	<% //int n = 365; %>
	<% int days = 365; %>
	1 년은 <%=i %>달 입니다.
	<%@ include file="includesub.jsp" %>
	1 년은 <%=days %>일 입니다.
</body>
</html>