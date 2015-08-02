package com.sp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;
import com.sp.dao.StudentDAO;
import com.sp.dao.staffDAO;
import com.sp.db.DbConnection;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends StudentBaseController {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String passCode = request.getParameter("password");
		String userType = request.getParameter("userType");
		System.out.println(userName);
		System.out.println(passCode);
		System.out.println(userType);

		DbConnection conn = null;
		Statement stmt = null;
		String sql = null;
		String passcode = null;
		try {
			conn = new DbConnection();
			if (userType.equals("student")) {
				sql = "SELECT user_stud_pwd FROM user_student WHERE user_stud_email='" + userName + "'";
			} else {
				sql = "SELECT user_staf_pwd FROM user_staff WHERE user_staf_email='" + userName + "'";
			}
			stmt = (Statement) conn.DbConnectionForPreparedStatement(sql);
			// PrintWriter writer = response.getWriter();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				if (userType.equals("student")) {
					passcode = rs.getString("user_stud_pwd");
					System.out.println("Retrived" + passcode);
				} else {
					passcode = rs.getString("user_staf_pwd");
					System.out.println("Retrived" + passcode);
				}
			} else {
				System.out.println("User Not Found");
				request.setAttribute("error", "Invaid Username and Password");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.include(request, response);
				return;
			}
			if (!passcode.equals(passCode)) {
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				request.setAttribute("error", "Invaid Username and Password");
				rd.include(request, response);
			} else {
				if (userType.equals("faculty")) {
					System.out.println("Fac");
					HttpSession user_session = request.getSession(true);
					user_session.setMaxInactiveInterval(600 * 600);
					Cookie userNameC = new Cookie("userNAME", userName);
					response.addCookie(userNameC);
					String encodedURL = response.encodeRedirectURL("faculty.jsp");
					response.sendRedirect(encodedURL);
					user_session.setAttribute("userName", userName);
					user_session.setAttribute("userType", userType);
					user_session.setAttribute("STAFF", staffDAO.getStaff(userName));
				} else if (userType.equals("student")) {
					System.out.println("student");
					HttpSession user_session = request.getSession(true);
					user_session.setMaxInactiveInterval(600 * 600);
					Cookie userNameC = new Cookie("userNAME", userName);
					response.addCookie(userNameC);
					String encodedURL = response.encodeRedirectURL("StudentDashController");
					response.sendRedirect(encodedURL);
					user_session.setAttribute("userName", userName);
					user_session.setAttribute("userEmail", userName);
					user_session.setAttribute("userType", userType);
					user_session.setAttribute(STUDENT, StudentDAO.getStudent(userName));

				}
			}
			//
			// } else {
			// if (approvalflag == 0) {
			// response.sendRedirect("confirmation_page.jsp");
			// // Since a object is used to compare the if changes a bit to
			// // the below format
			// } else if (approvalflag == 1 && usertype.equals("student")) {
			// HttpSession user_session = request.getSession(true);
			// user_session.setMaxInactiveInterval(30 * 60);
			// Cookie userName = new Cookie("userNAME", username);
			// response.addCookie(userName);
			// String encodedURL = responseStudent Login Successful! Take data
			// from
			// .encodeRedirectURL("student_home.jsp");
			// response.sendRedirect(encodedURL);
			// user_session.setAttribute("userName", username);
			// user_session.setAttribute("userType","student");
			// } else if (approvalflag == 1 && "faculty".equals(usertype)) {
			// HttpSession user_session = request.getSession(true);
			// user_session.setMaxInactiveInterval(30 * 60);
			// Cookie userName = new Cookie("userNAME", username);
			// response.addCookie(userName);
			// String encodedURL = response
			// .encodeRedirectURL("faculty_home.jsp");
			// response.sendRedirect(encodedURL);
			// user_session.setAttribute("userName", username);
			// user_session.setAttribute("userType","faculty");
			// } else if (approvalflag == 1 && "admin".equals(usertype)) {
			// HttpSession user_session = request.getSession(true);
			// user_session.setMaxInactiveInterval(30 * 60);
			// Cookie userName = new Cookie("userNAME", username);
			// response.addCookie(userName);
			// String encodedURL = response
			// .encodeRedirectURL("admin_home.jsp");
			// response.sendRedirect(encodedURL);
			// user_session.setAttribute("userName", username);
			// user_session.setAttribute("userType","admin");
			// }
			// }
		} catch (SQLException e) {
			System.out.println("issue with connectivity" + e);
		}
		// }

		// doGet(request, response);
	}

}
