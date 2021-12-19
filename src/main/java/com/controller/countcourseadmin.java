package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AddCyberSecurityDao;
import com.dao.AddDataScienceDao;
import com.dao.AddUsersDao;
import com.dao.AddWebDevelopmentDao;

/**
 * Servlet implementation class countcourseadmin
 */
public class countcourseadmin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AddCyberSecurityDao cs = new AddCyberSecurityDao();
		request.setAttribute("countCs", cs.countCyberSecurity());

		AddDataScienceDao ds = new AddDataScienceDao();
		request.setAttribute("countDs", ds.countDataScience());

		AddWebDevelopmentDao wd = new AddWebDevelopmentDao();
		request.setAttribute("countWd", wd.countWebDevelopment());

		AddUsersDao us = new AddUsersDao();
		request.setAttribute("countUs", us.countUser());

		RequestDispatcher rd = request.getRequestDispatcher("adminhome.jsp");
		rd.forward(request, response);

	}

}
