package com.sp.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.StudentDAO;
import com.sp.dao.staffDAO;
import com.sp.model.Staff;
import com.sp.model.Student;

/**
 * Servlet implementation class ProfileEdit
 */
@WebServlet("/ProfileEditController")
public class ProfileEditController extends StudentBaseController {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileEditController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		String email = null;
		HttpSession session = request.getSession();
		if (session.getAttribute("userType").equals("faculty")) {
			email = ((Staff) session.getAttribute("STAFF")).getEmail();
		} else if (session.getAttribute("userType").equals("student")) {
			email = ((Student) session.getAttribute("student")).getEmail();
		}

		String userType = (String) session.getAttribute("userType");
		if (userType.equals("student")) {
			request.setAttribute(STUDENT, StudentDAO.getStudent(email));
			RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
			dispatcher.forward(request, response);
			return;
		} else if (userType.equals("faculty")) {
			//TODO Handle NULL POINTER
			request.setAttribute("STAFF", staffDAO.getStaff(email));
			RequestDispatcher dispatcher = request.getRequestDispatcher("staff_profile.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("userName");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone = request.getParameter("phoneNumber");
		String ssn = request.getParameter("ssn");
		String streetAddress = request.getParameter("streetAddress");
		String apartmentNo = request.getParameter("aptNumber");
		String city = request.getParameter("city");
		String stateOrTeritory = request.getParameter("state");
		String country = request.getParameter("country");
		String zipcode = request.getParameter("zipCode");
		String userType = (String) session.getAttribute("userType");
		if (userType.equals("faculty")) {

			staffDAO.editStaff(email, firstName, lastName, phone, ssn, streetAddress, apartmentNo, city,
					stateOrTeritory, country, zipcode);
			RequestDispatcher dispatcher = request.getRequestDispatcher("faculty.jsp");
			dispatcher.forward(request, response);
		} else if (userType.equals("student")) {
			StudentDAO.editStudent(email, firstName, lastName, phone, ssn, streetAddress, apartmentNo, city,
					stateOrTeritory, country, zipcode);
			RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
			dispatcher.forward(request, response);
		}
	}

	// doGet(request, response);

}
