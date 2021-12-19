package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AddWebDevelopmentDao;

public class DeleteWebDevelopmentAdmin extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int wdid = Integer.parseInt(request.getParameter("wdid"));

		AddWebDevelopmentDao dao = new AddWebDevelopmentDao();
		dao.deleteWebDevelopment(wdid);
		response.sendRedirect("ListWebDevelopmentAdmin");
	}
	
}
