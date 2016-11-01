package kr.ac.mvc.controller;

import kr.ac.mvc.model.UserBean;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import java.io.*;

public class UserLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
							throws ServletException, IOException {
	
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		UserBean user = new UserBean();
		user.setUserid(userid);
		user.setPasswd(passwd);
		request.setAttribute("resultlogin", user.getCheckUser() );
		
		//처리 결과가 저장된 request를 전송하며 동시에 뷰인 login.jsp로 제어 이동 
		RequestDispatcher view = request.getRequestDispatcher("login.jsp");
		view.forward(request, response);

	}  	
	
	//POST 요청 역시 doGet()에서 처리하도록 함.
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
							throws ServletException, IOException {
		doGet(request,response);
	}   	  	    

}
