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
import com.bean.GetAllDataUsingTitle;
import com.bean.SetAnswerUser;
import com.dao.StackoverflowDao;


public class ListParticularQuestion extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str=request.getParameter("linkQuestionTitle");
		System.out.println(str);
		ArrayList<GetAllDataUsingTitle> arr = null;
		StackoverflowDao dao=new StackoverflowDao();
		if(str!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("StringTitle", str);
			try {
				arr=dao.getAllDataQuestionTitle(str);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(arr);
			
		}else {

			
			HttpSession session=request.getSession();
			String title=(String) session.getAttribute("StringTitle");
			System.out.println(title+" title of session");
			try {
				arr=dao.getAllDataQuestionTitle(title);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(arr);
			
		}
		System.out.println("question id is main --------------");
		
		int questionid=-1;
		try {
			HttpSession session=request.getSession();
			str=(String) session.getAttribute("StringTitle");
			questionid = dao.getQuestionIdTitle(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(questionid+"-------------------------------------------");
		ArrayList<SetAnswerUser> arr1=null;
		try {
			arr1=dao.getAllAnswerParticularQuestion(questionid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(arr1+"--------------------------------------------------------");
		if(arr1!=null) {
			request.setAttribute("printAnswerParticularQuestion", arr1);
		}
		request.setAttribute("GetAllDataTitle", arr);
		request.getRequestDispatcher("ListAllDataUsingTitle.jsp").forward(request, response);
		
		
	}

}
