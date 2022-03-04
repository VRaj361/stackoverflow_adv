package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CheckDataLoginbean;
import com.bean.UseridCookie;
import com.dao.StackoverflowDao;


public class LoginMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("sucessfully login");
		String email=request.getParameter("email_l");
		String password=request.getParameter("password_l");
		System.out.println(email+" fds "+password);
		CheckDataLoginbean lbean=new CheckDataLoginbean();
		lbean.setEmail(email);
		lbean.setPassword(password);
		StackoverflowDao dao=new StackoverflowDao();
		boolean is_check=false;
		try {
			is_check=dao.checkAlldata(lbean);
			System.out.println(is_check);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(is_check) {
			System.out.println("user exists");
//			UseridCookie uc=new UseridCookie();//for accessing the value userid
			HttpSession session =   request.getSession();
			session.setAttribute("userid", UseridCookie.userid); 

			session.setMaxInactiveInterval(60*10);//seconds 
			
			Cookie c=new Cookie("userid", Integer.toString(UseridCookie.userid));
			c.setMaxAge(60*10);
			response.addCookie(c);
			response.sendRedirect("StackoverflowHome.jsp");
//			request.getRequestDispatcher("ListAnotherQuestionHome").forward(request, response);;
		}else {
			request.setAttribute("direct_EL", "Email and Password doesn't exists");
			request.getRequestDispatcher("LoginMainJSP.jsp").forward(request, response);
			
		}
		
	}

}
