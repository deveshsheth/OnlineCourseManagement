package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AddCyberSecurityDao;



public class DeleteCyberSecurityAdmin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int csid = Integer.parseInt(request.getParameter("csid"));

		AddCyberSecurityDao dao = new AddCyberSecurityDao();
		dao.deleteCyberSecurity(csid);
		response.sendRedirect("ListCyberSecurityAdmin");
	}

}
