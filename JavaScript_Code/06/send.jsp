<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : send.jsp</title>
</head>
<body>
	<% response.sendRedirect("http://" + request.getParameter("url")); %>
</body>
</html>