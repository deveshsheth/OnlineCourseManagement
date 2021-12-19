package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.AddUsersDao;

public class AddUsers extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = (String) request.getParameter("firstname");
		String lastname = (String) request.getParameter("lastname");
		String phoneno = (String) request.getParameter("phoneno");
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");

		Boolean isError = false;
		if (firstname == null || firstname.trim().length() == 0) {
			isError = true;
			request.setAttribute("firstnameError", "Please Enter FirstName");
		} else {
			request.setAttribute("firstnameValue", firstname);
		}
		if (lastname == null || lastname.trim().length() == 0) {
			isError = true;
			request.setAttribute("lastnameError", "Please Enter LastName");
		} else {
			request.setAttribute("lastnameValue", lastname);
		}
		if (phoneno == null || phoneno.trim().length() == 0) {
			isError = true;
			request.setAttribute("phonenoError", "Please Enter Phoneno");
		} else {
			request.setAttribute("phonenoValue", phoneno);
		}
		if (email == null || email.trim().length() == 0) {
			isError = true;
			request.setAttribute("emailError", "Please Enter Email");
		} else {
			request.setAttribute("emailValue", email);
		}
		if (password == null || password.trim().length() == 0) {
			isError = true;
			request.setAttribute("passwordError", "Please Enter Password");
		} else {
			request.setAttribute("passwordValue", password);
		}
		if (isError == true) {
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		} else {

			UserBean Bean = new UserBean();

			Bean.setFirstname(firstname);
			Bean.setLastname(lastname);
			Bean.setPhoneno(phoneno);
			Bean.setEmail(email);
			Bean.setPassword(password);

			AddUsersDao usDao = new AddUsersDao();
			usDao.insert(Bean);

			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}

}
