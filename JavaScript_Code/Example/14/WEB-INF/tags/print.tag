<%@ tag body-content="scriptless" pageEncoding="euc-kr" 
		description="테이블 student 레코드 출력태그"
		import="java.util.ArrayList" %>

<%@ attribute name="bgcolor" required="true" %>
<%@ attribute name="border" required="true" %>
<%@ attribute name="list" required="true" type="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="count" value="<%= list.size() %>" />
<c:if test="${count > 0}" var="bool" >

	<center>
	<H2><jsp:doBody /></H2>
    <table width=100% border="${border}" cellpadding=1>
    <tr bgcolor="${bgcolor}">
       <td align=center><b>아이디</b></td>
       <td align=center><b>암호</b></td>
       <td align=center><b>이름</b></td>
       <td align=center><b>입학년도</b></td>
       <td align=center><b>학번</b></td>
       <td align=center><b>학과</b></td>
       <td align=center><b>휴대폰1</b></td>
       <td align=center><b>휴대폰2</b></td>
       <td align=center><b>주소</b></td>
       <td align=center><b>이메일</b></td>
    </tr>

	<c:forEach var="stdt" items="${list}" >
    <tr>
       <td align=center>${stdt.id}</td>
       <td align=center>${stdt.passwd}</td>
       <td align=center>${stdt.name}</td>
       <td align=center>${stdt.year}</td>
       <td align=center>${stdt.snum}</td>
       <td align=center>${stdt.depart}</td>
       <td align=center>${stdt.mobile1}</td>
       <td align=center>${stdt.mobile2}</td>
       <td align=center>${stdt.address}</td>
       <td align=center>${stdt.email}</td>
    </tr>
	</c:forEach>
	</table>
	</center>

</c:if>

<p><hr>조회된 학생 수가  ${count}명 입니다.			
