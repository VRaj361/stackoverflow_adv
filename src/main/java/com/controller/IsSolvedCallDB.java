package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StackoverflowDao;

public class IsSolvedCallDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String questionid_set=request.getParameter("questionid_set_db");
		String answerid_set=request.getParameter("answerid_set_db");
		System.out.println(questionid_set+" this is uesrid");
		StackoverflowDao dao=new StackoverflowDao();

			try {
				dao.isSolvedCalled(Integer.parseInt(answerid_set), Integer.parseInt(questionid_set));
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		System.out.println("done is solved");
		//question id set issolved as something 
		//userid through answer table modify 
		response.sendRedirect("ListParticularQuestion");
	}

}
