<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL SQL Tag</title>
</head>
<body>

<h2>JSTL SQL Tag: update, dateParam</h2>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<hr><h2>전체 게시판 조회</h2>
<sql:setDataSource var="ds" dataSource="jdbc/mysql"  />
<sql:query var="rs" dataSource="${ds}" sql="select * from board" />

<c:forEach var="brdRow" begin="0" items="${rs.rows}"> 
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.regdate} <br> 
</c:forEach> 

<hr><h3>이름 "박종학"인 레코드에서 이름을 "신용현"으로, 등록일 현재시간으로 수정 후,</h3>

<sql:update var="n" dataSource="${ds}">
   update board set name = ?, regdate = ? where name = ?
  <sql:param value="신용현" />
  <sql:dateParam value="<%= new java.util.Date() %>" type="timestamp" />
  <sql:param value="박종학" />
</sql:update>

<hr><h2> 다시 게시판 전체 조회</h2>
<sql:query var="rs" dataSource="${ds}" sql="select * from board" />
<c:forEach var="brdRow" begin="0" items="${rs.rows}"> 
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.regdate} <br> 
</c:forEach> 

</body>
</html>