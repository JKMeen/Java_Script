<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 date.jsp</title>
</head>
<body>

<% java.util.Date today = new java.util.Date(); %>
<% out.print("현재 시각은 [" + today + "] 입니다"); %>

</body>
</html>