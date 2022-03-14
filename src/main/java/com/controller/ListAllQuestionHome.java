package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.AskAQuestionbean;
import com.dao.StackoverflowDao;


public class ListAllQuestionHome extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside listallquestion servlet");
		StackoverflowDao dao=new StackoverflowDao();
		System.out.println("enter the in list all quesitton home");
		HttpSession session=request.getSession();
		int userid=-1;
		if(session.getAttribute("userid")==null) {
			System.out.println(userid+" which is already null");
			request.getRequestDispatcher("ListAllQuestionHomeJSP.jsp").forward(request, response);
		}else {
		userid=(Integer) session.getAttribute("userid");
		
		}
		System.out.println(userid+" this is userid which can fetch using ----------------------");
		ArrayList<AskAQuestionbean> arr = null;
		
		try {
			arr=dao.checkAllDataQuestions(userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(arr);
		request.setAttribute("AllDataQuestions", arr);
		request.getRequestDispatcher("ListAllQuestionHomeJSP.jsp").forward(request, response);
		
	}

}
