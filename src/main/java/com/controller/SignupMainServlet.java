package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.AddDataSignupbean;
import com.bean.UseridCookie;
import com.dao.StackoverflowDao;

public class SignupMainServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("signup sucessfully");

		
		
		String firstname=request.getParameter("firstname_s");		
		String lastname=request.getParameter("lastname_s");
		String email=request.getParameter("email_s");
		String password=request.getParameter("password_s");
		String gender=request.getParameter("gender_s");
		
		
		
		
		AddDataSignupbean dbean=new AddDataSignupbean();
		dbean.setFirstName(firstname);
		dbean.setLastName(lastname);
		dbean.setGender(gender);
		dbean.setEmail(email);
		dbean.setPassword(password);
		
		StackoverflowDao sdao=new StackoverflowDao();
		try {
			sdao.insertData(dbean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		UseridCookie uc=new UseridCookie();//for accessing the value userid
		HttpSession session =   request.getSession();
		session.setAttribute("userid", UseridCookie.userid); 

		session.setMaxInactiveInterval(60*10);//seconds 
		Cookie c=new Cookie("userid", Integer.toString(UseridCookie.userid));
		c.setMaxAge(60*10);
		response.addCookie(c);
		response.sendRedirect("StackoverflowHome.jsp");
		
		
		//session create -> userid 
		//databaseEntry
		//database entry and go on home page
		
	}

}
