package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.DataScienceBean;
import com.dao.AddDataScienceDao;

public class UpdateDataScience extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int dsid = Integer.parseInt(request.getParameter("dsid"));
		String dcode = request.getParameter("dcode");
		String dname = request.getParameter("dname");
		String dduration = request.getParameter("dduration");
		String dprice = request.getParameter("dprice");


		DataScienceBean bean = new DataScienceBean();
		bean.setDcode(dcode);
		bean.setDname(dname);
		bean.setDduration(dduration);
		bean.setDprice(dprice);
		bean.setDsid(dsid);
				
		AddDataScienceDao dao = new AddDataScienceDao();
		dao.updateDataScience(bean);
		
		request.setAttribute("DsUpdatedToast",
				"<div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>&nbsp;DataScience Course Updated Successfuly!!!</strong> <button type='button' class='close' data-dismiss='alert'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

		
		RequestDispatcher rd = request.getRequestDispatcher("ListDataScienceAdmin");
		rd.forward(request, response);

	}

}
