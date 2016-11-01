<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL 함수</title>
</head>
<body>

<%@ taglib prefix="date" uri="/WEB-INF/tld/ELfunction.tld" %>

<%
    java.util.Date today = new java.util.Date();
    request.setAttribute("now", today);
    if ( session.isNew() ) session.setAttribute("now", today);
%>

<h2> EL 함수 예제 </h2>
 
[Refresh]하면 현재 시간 : ${ date:format(now) } <p>
처음 접속한 시간 : ${ date:format(sessionScope.now) } <p>

</body>
</html>