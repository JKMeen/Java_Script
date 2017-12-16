package mytag;

import java.io.IOException;
import java.util.ArrayList;
import univ.StudentEntity;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectStudentTag extends SimpleTagSupport {
	
	// 커스텀 태그의 속성을 위한 변수
	private int border = 2;
	private String bgcolor = "white";
	private ArrayList<StudentEntity> list;

	public void doTag() throws IOException, JspException {

		JspWriter out = getJspContext().getOut();		
		JspFragment body = getJspBody();
						
		if(body != null){
			out.println("<center><H2>");
			body.invoke(null);
			out.println("</H2></center>");
		}
		
		// 태그 바디 처리후 student 테이블 출력을 위한 테이블 구성		
		int counter = list.size();		
		if (counter > 0) {
			out.println("</center>");
			out.println("<table width=100% cellpadding=1 " + 
				"border=" + getBorder() + " >" +
				"<tr align=center " + " bgcolor=" + getBgcolor() + " >" +
				"<td><b>아이디</b></td>" +
				"<td><b>암호</b></td>" +
				"<td><b>이름</b></td>" +
				"<td><b>입학년도</b></td>" +
				"<td><b>학번</b></td>" +
				"<td><b>학과</b></td>" +
				"<td><b>휴대폰1</b></td>" +
				"<td><b>휴대폰2</b></td>" +
				"<td><b>주소</b></td>" +
				"<td><b>이메일</b></td>" +
				"</tr>");

			for( StudentEntity stdt : list ) {
				out.println("<tr align=center>" +
						"<td>" + stdt.getId() + "</td>" +
						"<td>" + stdt.getPasswd() + "</td>" +
						"<td>" + stdt.getName() + "</td>" +
						"<td>" + stdt.getYear() + "</td>" +
						"<td>" + stdt.getSnum() + "></td>" +
						"<td>" + stdt.getDepart() + "</td>" +
						"<td>" + stdt.getMobile1() + "</td>" +
						"<td>" + stdt.getMobile2() + "</td>" +
						"<td>" + stdt.getAddress() + "</td>" +
						"<td>" + stdt.getEmail() + "</td>" + "</tr>");
			}
			out.println("</table>");
			out.println("</center>");
		}
		out.println("<p><hr>조회된 학생 수가 " + list.size() + "명 입니다.");			
	}

	public int getBorder() {
		return border;
	}

	public void setBorder(int border) {
		this.border = border;
	}

	public String getBgcolor() {
		return bgcolor;
	}

	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}
	
	public ArrayList<StudentEntity> getList() {
		return list;
	}

	public void setList(ArrayList<StudentEntity> list) {
		this.list = list;
	}

}
