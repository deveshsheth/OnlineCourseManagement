package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddUsersDao;

public class LoginServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String firstname = request.getParameter("firstname");
		String password = request.getParameter("password");

		Boolean isError = false;
		if (firstname == null || firstname.trim().length() == 0) {
			isError = true;
			request.setAttribute("firstnameError", "Please Enter Firstname");
		} else {
			request.setAttribute("firstnameValue", firstname);
		}

		if (password == null || password.trim().length() == 0) {
			isError = true;
			request.setAttribute("passwordError", "Please Enter Password");
		} else {
			request.setAttribute("passwordValue", password);
		}

		if (isError == true) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {

			AddUsersDao dao = new AddUsersDao();
			ResultSet rs = dao.checkLogin(firstname, password);

			try {
				if (rs.next()) {

					HttpSession session = request.getSession();
					session.setAttribute("Firstname", firstname);
					session.setAttribute("productCount", 0);
					response.sendRedirect("userhome.jsp");

				} else if (firstname.equals("admin") && password.equals("admin@123")) {
	
					response.sendRedirect("countcourseadmin");

				} else {
					System.out.print("Invalid Cerdentials..");
					request.setAttribute("Errormsg", "<h6 style='color:red'>Enter Valid Username and Password</h6>");
					//out.print("<p style='color:red'>Enter valid Name & Password</p>");
					RequestDispatcher dispach = request.getRequestDispatcher("login.jsp");
					dispach.include(request, response);
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}

	}

}
