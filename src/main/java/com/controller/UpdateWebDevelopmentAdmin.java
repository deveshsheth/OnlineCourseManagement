package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CyberSecurityBean;
import com.bean.WebDevelopmentBean;
import com.dao.AddCyberSecurityDao;
import com.dao.AddWebDevelopmentDao;


public class UpdateWebDevelopmentAdmin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int wdid = Integer.parseInt(request.getParameter("wdid"));
		String wcode = request.getParameter("wcode");
		String wname = request.getParameter("wname");
		String wduration = request.getParameter("wduration");
		String wprice = request.getParameter("wprice");


		WebDevelopmentBean bean = new WebDevelopmentBean();
		bean.setWcode(wcode);
		bean.setWname(wname);
		bean.setWduration(wduration);
		bean.setWprice(wprice);
		bean.setWdid(wdid);
				
		AddWebDevelopmentDao dao = new AddWebDevelopmentDao();
		dao.updateWebDevelopment(bean);
		
		request.setAttribute("WdUpdatedToast",
				"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;WebDevelopment Course Updated Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

		
		RequestDispatcher rd = request.getRequestDispatcher("ListWebDevelopmentAdmin");
		rd.forward(request, response);
		

	}

}
