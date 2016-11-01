<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL SQL Tag</title>
</head>
<body>

<h2>JSTL SQL Tag: functions</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="addr" value=" http://www.infinitybooks.co.kr " />
\${addr} = "${addr}" <br> 
\${fn:length(addr)} = ${fn:length(addr)} <br>
\${fn:toUpperCase(addr)} = "${fn:toUpperCase(addr)}" <p>

\${fn:substring(addr, 29, 31)} = "${fn:substring(addr, 29, 31)}" <br>
\${fn:substringBefore(addr, ":")} = "${fn:substringBefore(addr, ":")}" <br>
\${fn:substringAfter(addr, "//")} = "${fn:substringAfter(addr, "//")}" <p>

\${fn:trim(str1)} = "${fn:trim(addr)}" <br>
\${fn:replace(addr, "co.kr", "com")} = ${fn:replace(addr, "co.kr", "com")} <br>
\${fn:indexOf(addr, ":")} = ${fn:indexOf(addr, ":")} <p>

\${fn:startsWith(addr, "http")} = ${fn:startsWith(addr, "http")} <br>
\${fn:endsWith(addr, "r ")} = ${fn:endsWith(addr, "r ")} <br>
\${fn:contains(addr, "www")} = ${fn:contains(addr, "www")} <br>
\${fn:containsIgnoreCase(addr, "KR")} = ${fn:containsIgnoreCase(addr, "KR")} <p>

<c:set var="telNum" value="82-2-011-8754-8725" />
<c:set var="subNum" value="${fn:split(telNum, '-')}" />
\${telNum} = "${telNum}" <br> 
\${fn:join(subNum, ":")} = ${fn:join(subNum, ':')} <br>
\${fn:escapeXml("<hr>")} = ${fn:escapeXml("<hr>")} <br>

</body>
</html>