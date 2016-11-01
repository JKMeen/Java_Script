<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>첨부 메일 예제</title>
</head>
<body>

<h2> 첨부 메일 보내기 예제 </h2><hr>

<%@ page import="org.apache.commons.mail.MultiPartEmail" %>
<%@ page import="org.apache.commons.mail.EmailAttachment" %>

<%
String charSet = "euc-kr";
String hostSMTP = "localhost";
String toEmail = "hskang@dongyang.ac.kr";
String toName = "강 환수";
String fromEmail = "hskang@infinitybooks.com";
String fromName = "홍길동";
String subject = "MultiPartEmail 클래스를 이용한 메일 보내기";
String msg = "메일이 잘 가고 있지요!!";

//첨부할 내용을 EmailAttachment에 저장
EmailAttachment attachment = new EmailAttachment();
attachment.setPath("C:\\java\\MySQL 5.1\\my.ini");
attachment.setDisposition(EmailAttachment.ATTACHMENT);
attachment.setDescription("MySQL 초기 파일");
attachment.setName("my.ini");

try {
	MultiPartEmail email = new MultiPartEmail();
	email.setCharset(charSet);  
	email.setHostName(hostSMTP);
	email.addTo(toEmail, toName, charSet);
	email.setFrom(fromEmail, fromName, charSet);
	email.setSubject(subject);
	email.setMsg(msg);
	// 생성한 attachment를 추가
	email.attach(attachment);	
	email.send();
	out.println("메일 보내기 성공!!!");
} catch (Exception e) {
	out.println("메일 보내기 실패!!! <hr>");
	out.println(e.toString() + "<hr>");
}
%>

</body>
</html>