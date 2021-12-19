package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.DataScienceBean;
import com.dao.AddDataScienceDao;

/**
 * Servlet implementation class ListDataScienceUser
 */
public class ListDataScienceUser extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AddDataScienceDao dao = new AddDataScienceDao();

		ArrayList<DataScienceBean> datascience = dao.listDataScience();
		request.setAttribute("rs", datascience);
		
		RequestDispatcher rd = request.getRequestDispatcher("DataScienceuser.jsp");
		rd.forward(request, response);

	}

}
