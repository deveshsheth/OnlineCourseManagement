package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AddDataScienceDao;

/**
 * Servlet implementation class DeleteDataScienceAdmin
 */
public class DeleteDataScienceAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int dsid = Integer.parseInt(request.getParameter("dsid"));

		AddDataScienceDao dao = new AddDataScienceDao();
		dao.deleteDataScience(dsid);
		response.sendRedirect("ListDataScienceAdmin");
	}


}
