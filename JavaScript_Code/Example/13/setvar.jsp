<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: set</title>
</head>
<body>

<h2>JSTL Core Tag: set</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="foo" value="set Tag 테스트입니다." />
\${foo} = ${foo} <br>

<c:set var="n" >
24
</c:set>
\${n} = ${n} <br>

<c:set var="d" >
31.54
</c:set>
\${d} = ${d} <br>
\${n + d} = ${n + d} <br>

<c:set var="b" value="true" />
\${!b} = ${!b} <br>

<c:set var="str" value="Hello set Tag!!!" scope="session" />
\${str} = ${str} <br>
\${sessionScope.str} = ${sessionScope.str} <br>

</body>
</html>