<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>커스템 태그</title>
</head>
<body>

	<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %> 

	<H2>태그 파일을 만든 커스텀 태그 예제 </H2>
	<center><HR>
	<mytag:hello />
	</center>

</body>
</html>