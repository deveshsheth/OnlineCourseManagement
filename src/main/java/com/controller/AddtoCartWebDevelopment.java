package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddtoCartWebDevelopment extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		int productCount = (Integer) session.getAttribute("productCount");
		productCount = productCount + 1;
		session.setAttribute("productCount", productCount);
		
		response.sendRedirect("ListWebDevelopmentUser");
		
	}


}
