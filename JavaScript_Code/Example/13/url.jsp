<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: url</title>
</head>
<body>

<h2>JSTL Core Tag: url</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="ph1" value="paramhandle.jsp" />
<c:url var="ph2" value="paramhandle.jsp" >
  <c:param name="user" value="홍길동" />
</c:url>
\${ph1} = ${ph1}<p>
<a href="${ph2}">${ph2}</a>

<c:url var="site" value="/userEL.jsp" context="/ch12" />
<a href="${site}">${site}</a>

</body>
</html>