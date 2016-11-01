<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL SQL Tag</title>
</head>
<body>

<h2>JSTL SQL Tag: setDataSource, query, param</h2>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<hr><h2>전체 학생 조회</h2>
<sql:setDataSource var="stuDS" dataSource="jdbc/mysql"  />
<sql:query var="studentsRS" dataSource="${stuDS}">
  select * from student
</sql:query>

<sql:query var="studentsRS" dataSource="${stuDS}" sql="select * from student" />
<c:forEach var="studentRow" begin="0" items="${studentsRS.rows}"> 
${studentRow.id}, ${studentRow.passwd}, ${studentRow.name}, ${studentRow.depart} <br> 
</c:forEach> 

<hr><h2>컴퓨터공학과 학생 조회</h2>
<sql:query var="comRS" dataSource="${stuDS}" >
  select * from student where depart = ?
  <sql:param value="컴퓨터공학과" />
</sql:query>

<c:forEach var="studentRow" begin="0" items="${comRS.rows}"> 
${studentRow.id}, ${studentRow.passwd}, ${studentRow.name}, ${studentRow.depart} <br> 
</c:forEach> 

<hr>
<c:forEach var="studentRow" begin="0" items="${comRS.rowsByIndex}"> 
${studentRow[0]}, ${studentRow[1]}, ${studentRow[2]}, ${studentRow[5]} <br> 
</c:forEach> 

</body>
</html>