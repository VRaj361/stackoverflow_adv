package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.SetAnswerUser;
import com.dao.StackoverflowDao;


public class AnswerSendAnother extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String answer=request.getParameter("textareaAnswer");
		String title=request.getParameter("getTitleCheck");
		String url=request.getParameter("getURLAnswer");
		System.out.println(url);
		System.out.println(title);
		System.out.println("answer"+answer);
		int questionid=-1;
		StackoverflowDao dao=new StackoverflowDao();
		try {
			questionid=dao.getQuestionIdTitle(title);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(questionid+" Question id get");
	
		
		SetAnswerUser bean=new SetAnswerUser();
		HttpSession session=request.getSession();
		int userid=(Integer)session.getAttribute("userid");
		System.out.println(userid+ "   userid");
		bean.setUserid(userid);
		bean.setUrl(url);
		bean.setAnswer(answer);
		bean.setQuestionid(questionid);
		
		try {
			 dao.setAllDetailsAnswer(bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//add the items
		
		//answer will be set 
		
		response.sendRedirect("ListParticularQuestion");
		
	}

}
