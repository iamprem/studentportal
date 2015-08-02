package com.sp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.dao.StudentDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends StudentBaseController {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String emailID = request.getParameter("emailid");
		System.out.println("EmailID received " + emailID);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {

			if (StudentDAO.isEmailPresent(emailID)) {

				out.println("true");
			} else {
				out.println("false");
			}

		} finally {
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Reached");
		String userEmail = request.getParameter("userEmail");
		// System.out.println(userEmail);
		if (StudentDAO.isEmailPresent(userEmail)) {
			System.out.println("user already present");
			request.setAttribute(MESSAGE, "User already exists");  
			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
		}else{
			System.out.println("creating new user");
		
			String password = request.getParameter("confirmPassword");
			// System.out.println(password);
			StudentDAO.addStudent(userEmail, password);
			// doGet(request, response);
			response.sendRedirect("login.jsp");
		}
	}

}
