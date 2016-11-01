<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>표현언어 내장객체</title>
</head>
<body>
   <h2>JSP 2.0 표현언어(Expression Language) 내장객체</h2>
<% 	
	request.setAttribute("univ", "한국대학교");
	application.setAttribute("name", "홍길동");
%>
    <hr><br>
    <table border="1" align=center >
    <tr>
	  <td><b>EL Implicit Object</b></td>
	  <td><b>Result</b></td>
	</tr>
    <tr>
      <td>\${empty param.age}</td>
      <td>${empty param.age}</td>
    </tr>
    <tr>
      <td>\${!empty param.age}</td>
      <td>${!empty param.age}</td>
    </tr>
    <tr>
      <td>\${pageContext.request.contextPath}</td>
      <td>${pageContext.request.contextPath}</td>
    </tr>
    <tr>
      <td>\${requestScope.univ}</td>
      <td>${requestScope.univ}</td>
    </tr>
    <tr>
      <td>\${requestScope['univ']}</td>
      <td>${requestScope['univ']}</td>
    </tr>
    <tr>
      <td>\${applicationScope.name}</td>
      <td>${applicationScope.name}</td>
    </tr>
	</table>

</body>
</html>