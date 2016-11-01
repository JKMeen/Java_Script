<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: forEach</title>
</head>
<body>

<h2>JSTL Core Tag: forEach</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>배열 처리</h3>
<c:set var="score" value="<%= new int[] {95, 88, 77, 45, 99} %>" />
<c:forEach var="point" items="${score}" >
	\${point} = ${point} <br>
	<c:set var="sum" value="${sum + point}" />
</c:forEach>
합 = ${sum} <br>

<h3>1부터 100까지 합</h3>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" >
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
결과 = ${sum}

<h3>1부터 100까지 3의 배수 합</h3>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="3" end="100" step="3">
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
결과 = ${sum}

<h3>Map인 sessionScope 처리</h3>
<c:set target="${sessionScope}" property="name" value="홍길동" />
<c:set target="${sessionScope}" property="id" value="dong" />
<c:set target="${sessionScope}" property="passwd" value="1234" />
<c:forEach var="i" items="${sessionScope}" >
    ${i.key} = ${i.value}<br>
</c:forEach>

</body>
</html>