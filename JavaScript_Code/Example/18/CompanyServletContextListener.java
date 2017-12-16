package kr.ac.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class CompanyServletContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("ServletContextListener 초기화 사작");
		ServletContext ctx = arg0.getServletContext();
		
		System.out.println("\t메소드 contextInitialized()에서 객체 myCompany 생성");
		Company myCompany = new Company();
		myCompany.setName("인피니티북스");
		System.out.println("\t매개변수 email로 객체 myCompany의 속성을 지정");
		myCompany.setEmail(ctx.getInitParameter("email"));		

		System.out.println("\t속성 이름 company로 객체 myCompany를 저장");
		ctx.setAttribute("company", myCompany);
		System.out.println("ServletContextListener 초기화 종료");
    }

    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("ServletContextListener가 종료되었습니다.");
    }
	
}
