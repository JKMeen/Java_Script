<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ���� : score.jsp</title>
</head>
<body>

	<h2>JavaBeans�� �̿��� �л��� �̸��� ������ ����� ��ȸ ����</h2>
	<jsp:useBean id="score" class="javabean.ScoreBean" scope="page" />

	<HR>
	<h3>�̸��� ������ JavaBeans ScoreBean�� ����</h3><p>
	�̸� : <%= "�輺��"%>, 
	���� : <%= "85" %><p>
	<jsp:setProperty name="score" property="name" value="�輺��"/> 
	<jsp:setProperty name="score" property="point" value="85"/> 

	<HR>
	<h3>JavaBeans ScoreBean�� ����� ������ ��ȸ ���</h3><p>
	�̸� : <jsp:getProperty name="score" property="name" /><BR>
	���� : <jsp:getProperty name="score" property="point" /><BR>

</body>
</html>