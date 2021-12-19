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

/**
 * Servlet implementation class ListCyberSecurityUser
 */
public class ListCyberSecurityUser extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AddCyberSecurityDao dao = new AddCyberSecurityDao();

		ArrayList<CyberSecurityBean> cybersecurity = dao.listCyberSecurity();
		request.setAttribute("rs", cybersecurity);
		
		RequestDispatcher rd = request.getRequestDispatcher("CyberSecurityuser.jsp");
		rd.forward(request, response);

	}

}
