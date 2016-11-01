<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: remove</title>
</head>
<body>

<h2>JSTL Core Tag: remove</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="str" value="Hello set Tag!!!" scope="session" />
\${str} = ${str} <br>
\${sessionScope.str} = ${sessionScope.str} <br>

<c:remove var="str" scope="page" />
\${str} = ${str} <br>

<c:remove var="str" scope="session" />
\${str} = ${str} <br>

<c:set var="app" value="응용프로그램변수" scope="application" />
\${app} = ${app} <br>
<c:remove var="app" />
\${app} = ${app} 

</body>
</html>