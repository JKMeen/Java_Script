<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: forTokens</title>
</head>
<body>

<h2>JSTL Core Tag: forTokens</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="str" value="JSTL은 표준태그로서 코어, XML, 국제화, SQL, 함수 관련 태그로 구성된다."/>
${str} <p><hr>
위 문장은 forTokens의  속성 delims=" ,.은로서된다" 지정으로 다음 단어로 나뉘어진다.<hr><p>

<c:forTokens var="token" delims=" ,.은로서된다" items="${str}">
${token} 
</c:forTokens>

</body>
</html>