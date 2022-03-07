package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AskAQuestionbean;
import com.dao.StackoverflowDao;

public class AskAQuestionHomeServletR extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title=request.getParameter("title_askH");
		String body=request.getParameter("body_askH");
		String tags=request.getParameter("tags_askH");
		
		System.out.println("ask a question servlet");
		
		AskAQuestionbean abean=new AskAQuestionbean();
		abean.setTitle(title);
		abean.setBody(body);
		abean.setTags(tags);
		Cookie c[]=request.getCookies();
		for(Cookie x:c) {
			if(x.getName().equals("userid")) {
				abean.setUserid(Integer.parseInt(x.getValue()));
				System.out.println("value is set");
			}
		}
		
		StackoverflowDao dao=new StackoverflowDao();
		try {
			dao.insertDataQuestion(abean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("ListAllQuestionHome").forward(request, response);
	}

}
