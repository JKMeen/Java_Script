package kr.ac.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	private FilterConfig filterConfig = null;
	private String encoding = null;

	public void destroy() {
		filterConfig = null;
	}

	//문자  인코딩을 초기화 패라미터 encoding으로  설정
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
							throws IOException, ServletException {
        System.out.println("EncodingFilter : start");
		if (request.getCharacterEncoding() == null) {
			request.setCharacterEncoding(encoding);
		}
		chain.doFilter(request, response);
        System.out.println("EncodingFilter : exit");
	}

	//초기화 패라미터를 encoding 필드에 저장
	public void init(FilterConfig fConfig) throws ServletException {
		this.filterConfig = fConfig;
		this.encoding = filterConfig.getInitParameter("encoding");
	}

}