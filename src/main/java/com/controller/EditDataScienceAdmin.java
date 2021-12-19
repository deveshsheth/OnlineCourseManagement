package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.DataScienceBean;
import com.dao.AddDataScienceDao;


/**
 * Servlet implementation class EditDataScienceAdmin
 */
public class EditDataScienceAdmin extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int dsid = Integer.parseInt(request.getParameter("dsid"));

		AddDataScienceDao dao = new AddDataScienceDao();
		DataScienceBean bean = dao.getRecordById(dsid);
		request.setAttribute("bean", bean);

		
		
		RequestDispatcher rd = request.getRequestDispatcher("EditCourse1.jsp");
		rd.forward(request, response);
		
	}

}
