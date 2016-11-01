<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>커스템 태그</title>
</head>
<body>

<h2> 태그 파일을 이용한 커스템 태그 print로 student 조회 프로그램 </h2>
<hr>

	<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %> 
	<jsp:useBean id="stdtdb" class="univ.StudentDatabaseCP" scope="page" />
	
	<mytag:print border="1" bgcolor="skyblue" list="${stdtdb.studentList}" >
	학생정보조회
	</mytag:print>

</body>
</html>
