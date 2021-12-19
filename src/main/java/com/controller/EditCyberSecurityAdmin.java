package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CyberSecurityBean;

import com.dao.AddCyberSecurityDao;



public class EditCyberSecurityAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int csid = Integer.parseInt(request.getParameter("csid"));

		AddCyberSecurityDao dao = new AddCyberSecurityDao();
		CyberSecurityBean bean = dao.getRecordById(csid);
		request.setAttribute("bean", bean);

		RequestDispatcher rd = request.getRequestDispatcher("EditCourse2.jsp");
		rd.forward(request, response);

	}

}
