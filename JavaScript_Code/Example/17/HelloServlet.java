package kr.ac.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 클래스 HelloServlet : HttpServlet을 상속받아 구현
 */
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
								throws ServletException, IOException {
		
		response.setContentType("text/html; charset=EUC-KR");
		//HTML을 생성할 수 있는 PrintWriter 객체를 저장 
		PrintWriter out = response.getWriter();
		out.println("<h2>Hello Servlet!!!!<h2>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
								throws ServletException, IOException {
		//doPost()도 모두 doGet() 으로 처리 
		doGet(request, response);
	}

}
