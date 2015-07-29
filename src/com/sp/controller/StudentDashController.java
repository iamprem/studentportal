package com.sp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.CourseDAO;
import com.sp.dao.StudentDAO;

/**
 * Servlet implementation class StudentDashController
 */
@WebServlet("/StudentDashController")
public class StudentDashController extends StudentBaseController {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentDashController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("userEmail");
		System.out.println("Session Email"+email);
		request.setAttribute(STUDENTDASHBOARDLIST, StudentDAO.getStudentDash(email));
		RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
		dispatcher.forward(request, response);
		return;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// No Post method needed.

	}

}
