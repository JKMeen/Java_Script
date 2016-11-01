<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<title>표현언어 내장객체 headerValues</title>
</head>
<body>

<h2>\${ header } : 결과</h2>
${ header } <p>

<hr>
\${ headerValues } = ${ headerValues } <p>
\${ headerValues.cookie[0] } = ${ headerValues.cookie[0] } <p>
\${ headerValues.connection[0] } = ${ headerValues.connection[0] } <p>
\${ headerValues.host[0] } = ${ headerValues.host[0] } <p>
\${ headerValues.accept[0] } = ${ headerValues.accept[0] } <p>

<hr>
\${ headerValues["accept-language"][0] } = ${ headerValues["accept-language"][0] } <p>
\${ headerValues["user-agent"][0] } = ${ headerValues["user-agent"][0] } <p>
\${ headerValues["accept-encoding"][0] } = ${ headerValues["accept-encoding"][0] } <p>
\${ headerValues["ua-cpu"][0] } = ${ headerValues["ua-cpu"][0] } <p>

</body>
</html>