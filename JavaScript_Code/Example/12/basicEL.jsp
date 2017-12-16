<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>표현언어 연산자</title>
</head>
<body>

   <h2>JSP 2.0 표현언어(Expression Language) 연산자</h2>
    <hr><br>

    <table border="1">
	  <tr>
	    <td><b>EL Expression</b></td>
	    <td><b>Result</b></td>
	  <tr>
	  <tr>
	    <td>\${1}</td>
	    <td>${1}</td>
	  <tr>
	  <tr>
	    <td>\${1 + 2}</td>
	    <td>${1 + 2}</td>
	  </tr>
	  <tr>
	    <td>\${1.2 + 2.3}</td>
	    <td>${1.2 + 2.3}</td>
	  </tr>
	  <tr>
	    <td>\${1.2E4 + 1.4}</td>
	    <td>${1.2E4 + 1.4}</td>
	  </tr>
	  <tr>
	    <td>\${-4 - 2}</td>
	    <td>${-4 - 2}</td>
	  </tr>
	  <tr>
	    <td>\${21 * 2}</td>
	    <td>${21 * 2}</td>
	  </tr>
	  <tr>
	    <td>\${3 / 4}</td>
	    <td>${3 / 4}</td>
	  </tr>
	  <tr>
	    <td>\${3 div 4}</td>
	    <td>${3 div 4}</td>
	  </tr>
	  <tr>
	    <td>\${3 / 0}</td>
	    <td>${3 / 0}</td>
	  </tr>
	  <tr>
	    <td>\${10 % 4}</td>
	    <td>${10 % 4}</td>
	  </tr>
	  <tr>
	    <td>\${10 mod 4}</td>
	    <td>${10 mod 4}</td>
	  </tr>
    <tr>
      <td>\${(1==2) ? 3 : 4}</td>
      <td>${(1==2) ? 3 : 4}</td>
    </tr>
    <tr>
      <td>\${'a' < 'b'}</td>
      <td>${'a' < 'b'}</td>
    </tr>
    <tr>
      <td>\${ !('hit' gt 'hip') }</td>
      <td>${ !('hit' gt 'hip') }</td>
    </tr>
    <tr>
      <td>\${5 > 4 and 10 != 3*10}</td>
      <td>${5 > 4 and 10 != 3*10}</td>
    </tr>
	</table>
</body>
</html>