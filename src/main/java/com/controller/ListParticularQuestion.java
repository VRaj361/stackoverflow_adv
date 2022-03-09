package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.GetAllDataUsingTitle;
import com.dao.StackoverflowDao;


public class ListParticularQuestion extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str=request.getParameter("linkQuestionTitle");
		System.out.println(str);
		
		ArrayList<GetAllDataUsingTitle> arr = null;
		StackoverflowDao dao=new StackoverflowDao();
		try {
			arr=dao.getAllDataQuestionTitle(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(arr);
		
		request.setAttribute("GetAllDataTitle", arr);
		request.getRequestDispatcher("ListAllDataUsingTitle.jsp").forward(request, response);
		
		
	}

}
