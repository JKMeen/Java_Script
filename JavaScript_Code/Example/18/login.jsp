<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>

<%
	String inUserid = request.getParameter("userid");
	String inPasswd = request.getParameter("passwd");
	
	if (inUserid != null && inUserid.length() > 0 && 
			inPasswd != null && inPasswd.length() > 0) {
		session.setAttribute("userid", inUserid);
	}
	
	String userid = (String) session.getAttribute("userid");

	if ( userid != null && userid.length() > 0 ) {
		pageContext.forward("filter.jsp");
	} else {
		pageContext.include("loginform.html");
	}
%>
 
</body>
</html>