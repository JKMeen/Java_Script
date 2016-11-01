<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>필터 예제</title>
</head>
<body>

	<h3>한글 처리 필터 예제</h3>
	<hr>
	<% 
		String book = request.getParameter("jspbook");
		if ( book == null || book.length() == 0 ) {
	%>
			<h3>JSP 관련  좋은 서적은? (한글입력)</h3>
			<form method=post action=filter.jsp>
				<input type="text" name="jspbook">
				<input type="submit" value="확인">
			</form>
	<% 			
		} else {
			out.println("JSP 관련 좋은 서적 이름 : " + book);
		}
	%>

</body>
</html>