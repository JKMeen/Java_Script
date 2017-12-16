<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: redirect</title>
</head>
<body>

<h2>JSTL Core Tag: redirect</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:redirect url="paramhandle.jsp">
    <c:param name="user" value="hskang" />
</c:redirect>

</body>
</html>