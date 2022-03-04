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

public class ListAnotherQuestionHome extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int userid=(Integer) session.getAttribute("userid");
		StackoverflowDao dao=new StackoverflowDao();
		ArrayList<AskAQuestionbean> bean=new ArrayList<AskAQuestionbean>();
		try {
			bean=dao.checkAllDataQuestionA(userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(bean);
		request.setAttribute("ListAllAnotherQuestionHome", bean);
		request.getRequestDispatcher("ShowAnotherAllQuestion.jsp").forward(request, response);
		
	}

}
