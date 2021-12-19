package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CyberSecurityBean;
import com.dao.AddCyberSecurityDao;


public class UpdateCyberSecurityAdmin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int csid = Integer.parseInt(request.getParameter("csid"));
		String ccode = request.getParameter("ccode");
		String cname = request.getParameter("cname");
		String cduration = request.getParameter("cduration");
		String cprice = request.getParameter("cprice");


		CyberSecurityBean bean = new CyberSecurityBean();
		bean.setCcode(ccode);
		bean.setCname(cname);
		bean.setCduration(cduration);
		bean.setCprice(cprice);
		bean.setCsid(csid);
				
		AddCyberSecurityDao dao = new AddCyberSecurityDao();
		dao.updateCyberSecurity(bean);
		
		request.setAttribute("CsUpdatedToast",
				"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;CyberSecurity Course Updated Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

		
		RequestDispatcher rd = request.getRequestDispatcher("ListCyberSecurityAdmin");
		rd.forward(request, response);

	}


}
