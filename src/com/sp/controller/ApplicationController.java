package com.sp.controller;

import java.io.IOException;
import java.util.ArrayList;
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
import com.sp.model.Application;
import com.sp.model.Degree;
import com.sp.model.Department;
import com.sp.model.Student;
import com.sp.model.StudentLogin;
import com.sp.model.TestScore;

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
		String appStatus = null;
		try {
			appID = Integer.parseInt(request.getParameter("appID"));
			appStatus = request.getParameter("appStatus");
		} catch (Exception e) {
			appID = 0;
		}
		System.out.println("Incomming AppID: " + appID);
		if (appID == 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("application.jsp");
			dispatcher.forward(request, response);
		} else if (appStatus != null && appStatus.equals("Saved")) {
			session.setAttribute(APPLICATION, StudentDAO.getSavedApplication(appID));
			RequestDispatcher dispatcher = request.getRequestDispatcher("application_filled.jsp");
			dispatcher.forward(request, response);
		} else{
			String encodedURL = response.encodeRedirectURL("StudentDashController");
			response.sendRedirect(encodedURL);
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
		Application application = new Application();

		String action = request.getParameter(ACTION);
		System.out.println(request.getParameter("appID"));
		int appID;
		try {
			appID = Integer.parseInt(request.getParameter("appID"));
		} catch (Exception e) {
			appID = 0;
		}

		Student student = (Student) session.getAttribute(STUDENT);
		int student_id = student.getStudent_id();
		System.out.println("From session student object: " + student_id);
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String email = (String) session.getAttribute("userEmail");
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
		Date dateOfBirth = null;
		try {
			String dob = request.getParameter("dateOfBirth");
			System.out.println("DOB : " + dob);
			dateOfBirth = (Date) format.parse(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String phone = request.getParameter("phoneNumber");
		String ssn = request.getParameter("ssn");
		String streetAddress = request.getParameter("streetAddress");
		String apartmentNo = request.getParameter("aptNumber");
		String city = request.getParameter("city");
		String stateOrTeritory = request.getParameter("state");
		String country = request.getParameter("country_lb");
		System.out.println("country" + country);

		String zipcode = request.getParameter("zipCode");
		String degreeEarned = request.getParameter("degreeEarned");
		Double gpa = Double.parseDouble(request.getParameter("gpa"));
		String major = request.getParameter("major");
		String workOrgName = request.getParameter("workOrgName");
		Double yearsWorked = Double.parseDouble(request.getParameter("yearsWorked"));
		String keyRole = request.getParameter("role");
		// Application
		String desiredTerm = request.getParameter("enroll_term_lb");
		System.out.println("Term : "+desiredTerm);
		// String desiredTerm = "Spring 2016";
		String sopContent = request.getParameter("sop_content");
		String appStatus = null;
		if ("Submit".equalsIgnoreCase(action)) {
			appStatus = "Submitted";
		} else if ("Save".equalsIgnoreCase(action)) {
			appStatus = "Saved";
		}

		// Dept and Deg
		String deptID = request.getParameter("department_lb");
		String degID = request.getParameter("degree_lb");
		System.out.println("Dept : " + deptID + " Deg : " + degID);
		Degree degree = new Degree();
		Department department = new Department();
		degree.setDegID(degID);
		department.setDeptID(deptID);

		// TestScore
		ArrayList<TestScore> testScoreList = new ArrayList<TestScore>();
		Double testToeflIelts = Double.parseDouble(request.getParameter("test_toefl_ielts"));
		Double testGreGmat = Double.parseDouble(request.getParameter("test_gre_gmat"));
		String testToeflIeltCode = request.getParameter("test_toefl_ielts_lb");
		String testGreGmatCode = request.getParameter("test_gre_gmat_lb");
		if (testToeflIeltCode != "") {
			testScoreList.add(new TestScore(testToeflIeltCode, testToeflIelts, new Date()));
		}
		if (testGreGmatCode != "") {
			testScoreList.add(new TestScore(testGreGmatCode, testGreGmat, new Date()));
		}
		
		
		// TODO
		Student studForApplication = new Student(student_id, firstName, lastName, gender, email, dateOfBirth, phone,
				ssn, streetAddress, testScoreList, apartmentNo, city, stateOrTeritory, country, zipcode, degreeEarned,
				gpa, major, workOrgName, yearsWorked, keyRole);

		application = new Application(appID, appStatus, desiredTerm, studForApplication, degree, department,
				sopContent);

		System.out.println("Here");
		System.out.println(application.toString());

		if ("Submit".equalsIgnoreCase(action)) {
			// Insert or Update application table
			if (appID == 0) {
				System.out.println("On Submit newly created application" + appID);
				StudentDAO.createApplication(application);

			} else {
				System.out.println("On Submit retrived application" + appID);
				StudentDAO.updateApplication(application);
			}

		} else if ("Save".equalsIgnoreCase(action)) {
			// Insert or Update Application table

			if (appID == 0) {
				System.out.println("On Save new application" + appID);
				StudentDAO.createApplication(application);
			} else {
				System.out.println("On Save retrived application" + appID);
				StudentDAO.updateApplication(application);
			}
		}
		System.out.println("Before calling studentDashboard");
		RequestDispatcher dispatcher = request.getRequestDispatcher("StudentDashController");
		String encodedURL = response.encodeRedirectURL("StudentDashController");
		response.sendRedirect(encodedURL);
		System.out.println("Here again");
		return;
	}

}
