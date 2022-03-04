package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/AskAQuestionHomeServletR")
public class AskAQuestionHomeFilter implements Filter{

	

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("filter ask a question");
		String title=request.getParameter("title_askH");
		String body=request.getParameter("body_askH");
		
	
		boolean is_error=false;
		
		if(title.trim().length()==0) {
			is_error=true;	
			request.setAttribute("title_askHE", "Please Enter Title");
		}
		if(body.trim().length()==0) {
			is_error=true;
			request.setAttribute("body_askHE", "Please Enter Description");
		}
		
		
		if(is_error) {
			request.getRequestDispatcher("AskAQuestionHomeJSP.jsp").forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	
}
