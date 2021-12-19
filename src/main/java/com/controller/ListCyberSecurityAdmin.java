package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CyberSecurityBean;

import com.dao.AddCyberSecurityDao;



public class ListCyberSecurityAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AddCyberSecurityDao dao = new AddCyberSecurityDao();

		ArrayList<CyberSecurityBean> cybersecurity = dao.listCyberSecurity();
		request.setAttribute("rs", cybersecurity);
		
		RequestDispatcher rd = request.getRequestDispatcher("AdminCourse2.jsp");
		rd.forward(request, response);

	}

}
