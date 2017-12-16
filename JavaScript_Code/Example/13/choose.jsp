<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: choose</title>
</head>
<body>

<h2>JSTL Core Tag: choose</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="today" value="<%= new java.util.Date()%>" />
<c:choose> 
  <c:when test="${today.hours < 12 }" >
	Good morning!
  </c:when> 
  <c:when test="${today.hours < 18 }" > 
	Good afternoon!
  </c:when> 
  <c:otherwise> 
	Good evening!
  </c:otherwise> 
</c:choose> 

<hr>
<c:set var="count" value="3" />
<c:choose> 
  <c:when test="${count <= 0 }" > 
	일치하는 것이 하나도 없습니다.
  </c:when> 
  <c:otherwise> 
	일치하는 것이 ${count}개 있습니다.
  </c:otherwise> 
</c:choose> 

</body>
</html>