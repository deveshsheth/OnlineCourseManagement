package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bean.WebDevelopmentBean;

import com.dao.AddWebDevelopmentDao;


public class EditWebDevelopmentAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int wdid = Integer.parseInt(request.getParameter("wdid"));

		AddWebDevelopmentDao dao = new AddWebDevelopmentDao();
		WebDevelopmentBean bean = dao.getRecordById(wdid);
		request.setAttribute("bean", bean);

		RequestDispatcher rd = request.getRequestDispatcher("EditCourse3.jsp");
		rd.forward(request, response);

	}
}
