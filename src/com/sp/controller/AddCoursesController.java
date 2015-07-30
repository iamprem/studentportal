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
import com.sp.dao.EmailDAO;
import com.sp.model.Course;

/**
 * Servlet implementation class AddCourseController
 */
@WebServlet("/AddCoursesController")
public class AddCoursesController extends StudentBaseController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCoursesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String courseCode = request.getParameter(COURSE_ID);
		int courseID=Integer.parseInt(courseCode);
		HttpSession session = request.getSession();
			request.setAttribute(COURSE,CourseDAO.getCourseByID(courseID));
				request.getRequestDispatcher("editcourse.jsp").forward(request, response);
		return;
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String newCourseID = (String) request.getParameter(COURSE_ID);
		 String deptID= request.getParameter(DEPT_ID);
			String degID= request.getParameter(DEG_ID);
			String action = request.getParameter(ACTION);

		 if ("Submit".equalsIgnoreCase(action)) {
			 int courseID=Integer.parseInt(newCourseID);
			Course course= CourseDAO.getCourseByID(courseID);
			if ((course == null)) {
				String coursesID= request.getParameter(COURSE_ID);
				int iD=Integer.parseInt(coursesID);
				String courseName= request.getParameter(COURSE_NAME);
				String insMethod= request.getParameter(INS_METHOD);
				String credHrs= request.getParameter(CREDIT_HOURS);
				int hrs=Integer.parseInt(credHrs);
				String courseDesc = request.getParameter(COURSE_DESC);
				String coursePreReq = request.getParameter(COURSE_PREREQ);
				
				
			CourseDAO.addCourse(deptID, degID, iD, courseName, insMethod, credHrs,courseDesc,coursePreReq);
			//EmailDAO.UpdateEmailTrigger(deptID, degID, iD, courseName, insMethod, credHrs);
			}  

			else {
				request.setAttribute(MESSAGE, "Course Exists");				
				request.setAttribute("courseID",(String) request.getParameter(COURSE_ID));
				request.setAttribute("courseName",(String) request.getParameter(COURSE_NAME));
				request.setAttribute("insMethod",(String) request.getParameter(INS_METHOD));
				request.setAttribute("creditHours",(String) request.getParameter(CREDIT_HOURS));
				request.setAttribute("deptID",(String) request.getParameter(DEPT_ID));
				request.setAttribute("degID",(String) request.getParameter(DEG_ID));
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("Addcourse.jsp");
				dispatcher.forward(request, response);
				
			}
		 }
		 else if ("Cancel".equalsIgnoreCase(action)) {
			} 
			request.setAttribute(DEPT_ID,deptID);
			request.setAttribute(DEG_ID,degID);
			request.setAttribute(COURSE_LIST, CourseDAO.getCourseList(deptID, degID));
			RequestDispatcher dispatcher = request.getRequestDispatcher("course.jsp");
			dispatcher.forward(request, response);
	}
}
