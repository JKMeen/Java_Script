<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>커스템 태그</title>
</head>
<body>

<h2> 태그 파일을 이용한 커스텀 태그 : multiplication </h2>
<hr>

	<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %> 
	
	<mytag:multiplication>
	구구단(2단에서 9단까지)
	</mytag:multiplication>

	<mytag:multiplication end="5" bgcolor="linen">
	구구단(2단에서 5단까지)
	</mytag:multiplication>

	<mytag:multiplication begin="3" end="7" bgcolor="yellow">
	구구단(3단에서 7단까지)
	</mytag:multiplication>

</body>
</html>
