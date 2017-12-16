<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : scorenotag.jsp</title>
</head>
<body>

	<h2>태그를 사용하지 않는 방법으로 JavaBeans를 이용하는 예제</h2>
	<% javabean.ScoreBean score = new javabean.ScoreBean(); %>

	<HR>
	<h3>이름과 성적을 JavaBeans ScoreBean에 저장</h3><p>
	이름 : <%= "김성민"%>, 
	성적 : <%= "85" %><p>
	<% score.setName("김성민"); %>
	<% score.setPoint(85); %>

	<HR>
	<h3>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h3><p>
	이름 : <% out.println(score.getName()); %><br>
	성적 : <% out.println(score.getPoint()); %>

</body>
</html>