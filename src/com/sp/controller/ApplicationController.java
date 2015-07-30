package com.sp.controller;

import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.ApplicationDAO;
import com.sp.dao.CourseDAO;
import com.sp.dao.EmailDAO;
import com.sp.dao.StudentDAO;
import com.sp.model.StudentLogin;

/**
 * Servlet implementation class ApplicationController
 */
@WebServlet("/ApplicationController")
public class ApplicationController extends StudentBaseController {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApplicationController() {
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
		System.out.println(request.getParameter("appID"));
		int appID;
		try {
			appID = Integer.parseInt(request.getParameter("appID"));
		} catch (Exception e) {
			appID = 0;
		}
		System.out.println("Incomming AppID: " + appID);
		if (appID == 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("application.jsp");
			dispatcher.forward(request, response);
		} else {
			session.setAttribute(APPLICATION, StudentDAO.getSavedApplication(appID));
			RequestDispatcher dispatcher = request.getRequestDispatcher("application_filled.jsp");
			dispatcher.forward(request, response);
		}
		
		return;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String action = request.getParameter(ACTION);
		System.out.println(request.getParameter("appID"));
		int appID;
		try {
			appID = Integer.parseInt(request.getParameter("appID"));
		} catch (Exception e) {
			appID = 0;
		}
		
		StudentLogin student = (StudentLogin) session.getAttribute(STUDENT);
		
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String email = (String) session.getAttribute("userEmail");
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
		try {
			String dob = request.getParameter("dateOfBirth");
			System.out.println("DOB : "+dob);
			Date dateOfBirth = (Date) format.parse(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String phone = request.getParameter("phoneNumber");
		String ssn = request.getParameter("ssn");
		String streetAddress = request.getParameter("streetAddress");
		String apartmentNo = request.getParameter("aptNumber");
		String city = request.getParameter("city");
		String stateOrTeritory = request.getParameter("state");
		// String country = rs.getString("country");
		String zipcode = request.getParameter("zipCode");
		String degreeEarned = request.getParameter("degreeEarned");
		Double gpa = Double.parseDouble(request.getParameter("gpa"));
		String major = request.getParameter("major");
		String workOrgName = request.getParameter("workOrgName");
		Double yearsWorked = Double.parseDouble(request.getParameter("yearsWorked"));
		String keyRole = request.getParameter("role");
		String sopContent = request.getParameter("sop_content");

		// String deptID = request.getParameter(DEPT_ID);
		// String degID = request.getParameter(DEG_ID);
		System.out.println("Here");
		
		if ("Submit".equalsIgnoreCase(action)) {
			//Insert or Update application table
			if (appID == 0) {
				System.out.println("On Submit newly created application"+appID);
				
				
				
			} else{
				System.out.println("On Submit retrived application"+appID);
			}
			
		} else if ("Save".equalsIgnoreCase(action)) {
			//Insert or Update Application table
			
			if (appID == 0) {
				System.out.println("On Save new application"+appID);
			} else {
				System.out.println("On Save retrived application"+appID);
			}
		} 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("StudentDashController");
		dispatcher.forward(request, response);
		
	}

}
