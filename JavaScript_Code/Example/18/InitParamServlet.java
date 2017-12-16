package kr.ac.param;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletContext;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// 초기화 패라미터를 읽기 위한 객체 저장
		ServletContext sContext = getServletContext();
		ServletConfig sConfig = getServletConfig();
		
		// 초기화 패라미터 출력
		out.println("<H2>초기화 패라미터 </H2>");
		out.println("<HR>");
		out.println("<center><H3>컨텍스트 초기화 패라미터 </H3>");
		out.println("eamil : "+ sContext.getInitParameter("email") + "<br>");
		out.println("datasource : "+ sContext.getInitParameter("datasource") + "<p>");
		out.println("<HR>");
		out.println("<H3>서블릿 초기화 패라미터 </H3>");
		out.println("upfolder : "+ sConfig.getInitParameter("upfolder") + "<br>");
		out.println("</center>");
	}

}
