package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CyberSecurityBean;
import com.dao.AddCyberSecurityDao;
import com.dao.AddDataScienceDao;

/**
 * Servlet implementation class AddCyberSecurity
 */
public class AddCyberSecurity extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String ccode = (String) request.getParameter("ccode");
		String cname = (String) request.getParameter("cname");
		String cduration = (String) request.getParameter("cduration");
		String cprice = (String) request.getParameter("cprice");

		Boolean isError = false;
		if (ccode == null || ccode.trim().length() == 0) {
			isError = true;
			request.setAttribute("ccodeError", "Please Enter Code");
		} else {
			request.setAttribute("ccodeValue", ccode);
		}
		if (cname == null || cname.trim().length() == 0) {
			isError = true;
			request.setAttribute("cnameError", "Please Enter Course Name");
		} else {
			request.setAttribute("cnameValue", cname);
		}
		if (cduration == null || cduration.trim().length() == 0) {
			isError = true;
			request.setAttribute("cdurationError", "Please Enter Duration");
		} else {
			request.setAttribute("cdurationValue", cduration);
		}
		if (cprice == null || cprice.trim().length() == 0) {
			isError = true;
			request.setAttribute("cpriceError", "Please Enter Price");
		} else {
			request.setAttribute("cpriceValue", cprice);
		}
		if (isError == true) {
			RequestDispatcher rd = request.getRequestDispatcher("AddCourse2.jsp");
			rd.forward(request, response);
		} else {

			CyberSecurityBean Bean = new CyberSecurityBean();

			Bean.setCcode(ccode);
			Bean.setCname(cname);
			Bean.setCduration(cduration);
			Bean.setCprice(cprice);

			AddCyberSecurityDao csDao = new AddCyberSecurityDao();
			csDao.insertCyberSecurity(Bean);
		
			request.setAttribute("CsToast",
					"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;CyberSecurity Course Added Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

			
			RequestDispatcher rd = request.getRequestDispatcher("ListCyberSecurityAdmin");
			rd.forward(request, response);
			
			
		}
	}

}
