package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.WebDevelopmentBean;
import com.dao.AddWebDevelopmentDao;

/**
 * Servlet implementation class AddWebDevelopment
 */
public class AddWebDevelopment extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String wcode = (String) request.getParameter("wcode");
		String wname = (String) request.getParameter("wname");
		String wduration = (String) request.getParameter("wduration");
		String wprice = (String) request.getParameter("wprice");

		Boolean isError = false;
		if (wcode == null || wcode.trim().length() == 0) {
			isError = true;
			request.setAttribute("wcodeError", "Please Enter Code");
		} else {
			request.setAttribute("wcodeValue", wcode);
		}
		if (wname == null || wname.trim().length() == 0) {
			isError = true;
			request.setAttribute("wnameError", "Please Enter Course Name");
		} else {
			request.setAttribute("wnameValue", wname);
		}
		if (wduration == null || wduration.trim().length() == 0) {
			isError = true;
			request.setAttribute("wdurationError", "Please Enter Duration");
		} else {
			request.setAttribute("wdurationValue", wduration);
		}
		if (wprice == null || wprice.trim().length() == 0) {
			isError = true;
			request.setAttribute("wpriceError", "Please Enter Price");
		} else {
			request.setAttribute("wpriceValue", wprice);
		}
		if (isError == true) {
			RequestDispatcher rd = request.getRequestDispatcher("AddCourse3.jsp");
			rd.forward(request, response);
		} else {

			WebDevelopmentBean Bean = new WebDevelopmentBean();

			Bean.setWcode(wcode);
			Bean.setWname(wname);
			Bean.setWduration(wduration);
			Bean.setWprice(wprice);

			AddWebDevelopmentDao wdDao = new AddWebDevelopmentDao();
			wdDao.insertWebDevelopment(Bean);
			
			request.setAttribute("WdToast",
					"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;WebDevelopment Course Added Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

			
			RequestDispatcher rd = request.getRequestDispatcher("ListWebDevelopmentAdmin");
			rd.forward(request, response);
			
			
		}
	}

}
