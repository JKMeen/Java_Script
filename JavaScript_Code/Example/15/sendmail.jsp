<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영어 메일 예제</title>
</head>
<body>

<h2> 영어 메일 보내기 예제 </h2><hr>

<%@ page import="org.apache.commons.mail.SimpleEmail" %>

<%
try {
	SimpleEmail email = new SimpleEmail();
	email.setHostName("localhost");
	email.addTo("hskang@dongyang.ac.kr", "Kang Hwan Soo");
	email.setFrom("hskang@infinitybooks.com", "Hong Kildong");
	email.setSubject("Subject : Sending A Mail Test!!!");
	email.setMsg("I'm sending a mail using Jakarta commons-email library.");
	email.send();
	out.println("메일 보내기 성공!!!");
} catch (Exception e) {
	out.println("메일 보내기 실패!!! <hr>");
	out.println(e.toString());
}
%>

</body>
</html>