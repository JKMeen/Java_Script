<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한글 메일 예제</title>
</head>
<body>

<h2> 한글 메일 보내기 예제 </h2><hr>

<%@ page import="org.apache.commons.mail.SimpleEmail" %>

<%
String charSet = "euc-kr";
String hostSMTP = "localhost";
//String hostSMTP = "smtp.gmail.com";
//String hostSMTPid = "hskang7@gmail.com";
//String hostSMTPid = "hskang7";
//String hostSMTPpasswd = "passwd";
String toEmail = "hskang@dongyang.ac.kr";
String toName = "강 환수";
String fromEmail = "cho@dongyang.ac.kr";
String fromName = "조 진형";
String subject = "SimpleEmail 클래스를 이용한 메일 보내기";
String msg = "메일이 잘 가고 있지요!!";

try {
	SimpleEmail email = new SimpleEmail();
	email.setDebug(true);  
	email.setCharset(charSet);  
	email.setHostName(hostSMTP);
	//email.setAuthentication(hostSMTPid, hostSMTPpasswd);
	//email.setTLS(true); 
	email.addTo(toEmail, toName, charSet);
	email.setFrom(fromEmail, fromName, charSet);
	email.setSubject(subject);
	email.setMsg(msg);
	email.send();
	
	out.println("메일 보내기 성공!!!");
} catch (Exception e) {
	out.println("메일 보내기 실패!!! <hr>");
	out.println(e.toString() + "<hr>");
}
%>

</body>
</html>