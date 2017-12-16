<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: import</title>
</head>
<body>

<h2>JSTL Core Tag: import</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/if.jsp" />

<c:import url="choose.jsp" var="choose" />
${choose}

<c:import url="paramhandle.jsp" >
	<c:param name="user" value="kang" />
</c:import>

<p><hr><p>
<c:import url="http://java.sun.com/products/jsp/jstl/1.1/docs/tlddocs/c/import.html" var="java" />
${java}

</body>
</html>