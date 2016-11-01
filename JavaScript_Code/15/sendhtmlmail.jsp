<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>HMTL 메일 예제</title>
</head>
<body>

<h2> HTML 메일 보내기 예제 </h2><hr>

<%@ page import="org.apache.commons.mail.HtmlEmail" %>
<%@ page import="java.net.URL" %>

<%
String charSet = "euc-kr";
String hostSMTP = "localhost";
String toEmail = "hskang@dongyang.ac.kr";
String toName = "강 환수";
String fromEmail = "hskang@infinitybooks.com";
String fromName = "남승현";
String subject = "HtmlEmail 클래스를 이용한 메일 보내기";

try {
	HtmlEmail email = new HtmlEmail();
	email.setDebug(true);
	email.setCharset(charSet);  
	email.setHostName(hostSMTP);
	email.addTo(toEmail, toName, charSet);
	email.setFrom(fromEmail, fromName, charSet);
	email.setSubject(subject);
	
	// 삽입할 이미지와 그 Content Id를 설정
	URL url = new URL("http://www.infinitybooks.co.kr/images/top_logo.jpg");
	String cid = email.embed(url, "인피니티북스 로고");

	// HTML 메세지를 지정
	StringBuffer htmlmsg = new StringBuffer();
	htmlmsg.append("<html><body>");
	htmlmsg.append("인피니티북스 로고 : <img src=cid:").append(cid).append(">");
	htmlmsg.append("</body></html>");
	email.setHtmlMsg(htmlmsg.toString()); 
	 
	// HTML 이메일을 지원하지 않는 클라이언트라면 다음 메세지를 출력
	email.setTextMsg("이 메일은 HTML 이메일을 지원하지 않습니다");
	email.send();
	
	out.println("메일 보내기 성공!!!");
} catch (Exception e) {
	out.println("메일 보내기 실패!!! <hr>");
	out.println(e.toString() + "<hr>");
}
%>

</body>
</html>