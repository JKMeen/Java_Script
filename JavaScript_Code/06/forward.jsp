<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : forward.jsp</title>
</head>
<body>
	<%
	//pageContext.forward("send.jsp"); 
	%>
	<jsp:forward page="send.jsp" />
</body>
</html>