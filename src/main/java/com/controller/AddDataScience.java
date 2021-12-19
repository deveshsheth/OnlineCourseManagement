package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.DataScienceBean;
import com.dao.AddDataScienceDao;

public class AddDataScience extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String dcode = (String) request.getParameter("dcode");
		String dname = (String) request.getParameter("dname");
		String dduration = (String) request.getParameter("dduration");
		String dprice = (String) request.getParameter("dprice");

		Boolean isError = false;
		if (dcode == null || dcode.trim().length() == 0) {
			isError = true;
			request.setAttribute("dcodeError", "Please Enter Code");
		} else {
			request.setAttribute("dcodeValue", dcode);
		}
		if (dname == null || dname.trim().length() == 0) {
			isError = true;
			request.setAttribute("dnameError", "Please Enter Course Name");
		} else {
			request.setAttribute("dnameValue", dname);
		}
		if (dduration == null || dduration.trim().length() == 0) {
			isError = true;
			request.setAttribute("ddurationError", "Please Enter Duration");
		} else {
			request.setAttribute("ddurationValue", dduration);
		}
		if (dprice == null || dprice.trim().length() == 0) {
			isError = true;
			request.setAttribute("dpriceError", "Please Enter Price");
		} else {
			request.setAttribute("dpriceValue", dprice);
		}
		if (isError == true) {
			RequestDispatcher rd = request.getRequestDispatcher("AddCourse1.jsp");
			rd.forward(request, response);
		} else {

			DataScienceBean Bean = new DataScienceBean();

			Bean.setDcode(dcode);
			Bean.setDname(dname);
			Bean.setDduration(dduration);
			Bean.setDprice(dprice);

			AddDataScienceDao dsDao = new AddDataScienceDao();
			dsDao.insert(Bean);

			request.setAttribute("DsToast",
					"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;DataScience Course Added Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

			RequestDispatcher rd = request.getRequestDispatcher("ListDataScienceAdmin");
			rd.forward(request, response);
		}
	}

}
