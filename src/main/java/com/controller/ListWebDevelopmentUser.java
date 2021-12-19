package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.WebDevelopmentBean;
import com.dao.AddWebDevelopmentDao;


public class ListWebDevelopmentUser extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AddWebDevelopmentDao dao = new AddWebDevelopmentDao();

		ArrayList<WebDevelopmentBean> webDevelopment = dao.listWebDevelopment();
		request.setAttribute("rs", webDevelopment);
		
		RequestDispatcher rd = request.getRequestDispatcher("WebDevelopmentuser.jsp");
		rd.forward(request, response);

	}
}
