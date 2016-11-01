<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MVC 예제</title>
</head>
<body>

<%
	Boolean res = (Boolean)request.getAttribute("resultlogin");
	String userid = request.getParameter("userid");
	if ( res.booleanValue() ) {
		out.println("사용자 " + userid + "님, 로그인 하셨습니다. 반갑습니다.");
	} else {
		out.println("사용자 " + userid + "님, 암호가 다릅니다.");
	}
%>

<hr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="result" value="${requestScope.resultlogin}" />

<c:choose> 
  <c:when test="${result}" > 
	사용자 ${param.userid}님, 로그인 하셨습니다. 반갑습니다.
  </c:when> 
  <c:otherwise> 
	사용자 ${param.userid}님, 암호가 다릅니다.
	<jsp:include page="index.html" />
  </c:otherwise> 
</c:choose> 


</body>
</html>