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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		String email =  (String) session.getAttribute("email");
		request.setAttribute(STUDENTDASHBOARDLIST, StudentDAO.getStudentDash(email));
		RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
		dispatcher.forward(request, response);
		return;
		//TODO Prem
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String action = request.getParameter(ACTION);
		String deptID =  request.getParameter(DEPT_ID);
		String degID =  request.getParameter(DEG_ID);
		if ("Submit".equalsIgnoreCase(action)) {
				String coursesID= request.getParameter(COURSE_ID);
				int iD=Integer.parseInt(coursesID);
				String courseName= request.getParameter(COURSE_NAME);
				String insMethod= request.getParameter(INS_METHOD);
				String credHrs= request.getParameter(CREDIT_HOURS);
				int hrs=Integer.parseInt(credHrs);
			CourseDAO.updateCourse(iD,courseName,insMethod,hrs);

		} else if ("Cancel".equalsIgnoreCase(action)) {
		} else if ("Delete".equalsIgnoreCase(action)) {
			String coursesID= request.getParameter(COURSE_ID);
			int courseID=Integer.parseInt(coursesID);
			CourseDAO.deleteCourseByCode(courseID);
		}
		request.setAttribute(DEPT_ID,deptID);
		request.setAttribute(DEG_ID,degID);
		request.setAttribute(COURSE_LIST, CourseDAO.getCourseList(deptID, degID));
		RequestDispatcher dispatcher = request.getRequestDispatcher("course.jsp");
		dispatcher.forward(request, response);
	
	}

}
