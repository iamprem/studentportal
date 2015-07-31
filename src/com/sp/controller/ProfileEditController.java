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
		System.out.println("User email received" + email);
		System.out.println("User Type" + userType);
		if (userType.equals("student")) {
			request.setAttribute(STUDENT, StudentDAO.getStudent(email));
			RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
			dispatcher.forward(request, response);
			return;
		} else if (userType.equals("faculty")) {
			//TODO Handle NULL POINTER
			request.setAttribute("STAFF", StudentDAO.getStudent(email));
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
		;
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone = request.getParameter("phoneNumber");
		String ssn = request.getParameter("ssn");
		String streetAddress = request.getParameter("streetAddress");
		String apartmentNo = request.getParameter("aptNumber");
		String city = request.getParameter("city");
		String stateOrTeritory = request.getParameter("state");
		String country = request.getParameter("country_lb");
		System.out.println("country" + country);
		String zipcode = request.getParameter("zipCode");
		String userType = (String) session.getAttribute("userType");
		System.out.println("=============");
		System.out.println(email);
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(phone);
		System.out.println(ssn);
		System.out.println(streetAddress);
		System.out.println(apartmentNo);
		System.out.println(city);
		System.out.println(stateOrTeritory);
		System.out.println(country);
		System.out.println(zipcode);
		System.out.println(userType);
		if (userType.equals("faculty")) {
			System.out.println("FAC");

			staffDAO.editStaff(email, firstName, lastName, phone, ssn, streetAddress, apartmentNo, city,
					stateOrTeritory, country, zipcode);
		} else if (userType.equals("student")) {
			System.out.println("STU");
			StudentDAO.editStudent(email, firstName, lastName, phone, ssn, streetAddress, apartmentNo, city,
					stateOrTeritory, country, zipcode);

		}
	}

	// doGet(request, response);

}
