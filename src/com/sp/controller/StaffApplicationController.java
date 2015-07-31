package com.sp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.ApplicationDAO;
import com.sp.dao.EmailDAO;
import com.sp.dao.StaffFilterDao;
import com.sp.dao.StudentDAO;
import com.sp.model.Department;
import com.sp.model.Staff;

/**
 * Servlet implementation class StaffApplicationController
 */
@WebServlet("/StaffApplicationController")
public class StaffApplicationController extends StudentBaseController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffApplicationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appID =  request.getParameter(APP_ID);
		int app=Integer.parseInt(appID);
		request.setAttribute(APPLICATION,StudentDAO.getSavedApplication(app));
	RequestDispatcher dispatcher = request.getRequestDispatcher("review.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appID =  request.getParameter(APP_ID);
		int app=Integer.parseInt(appID);
		String studentID =  request.getParameter(STUDENT_ID);
		int studentId=Integer.parseInt(studentID);
		String action = request.getParameter(ACTION);
		HttpSession session = request.getSession(true);
		String staffDept= null;
		int empID=0;
		if(null !=session.getAttribute("STAFF")){
			staffDept= ((Staff) session.getAttribute("STAFF")).getdeptId();
			empID= ((Staff) session.getAttribute("STAFF")).getEmployee_id();
		}
	 if ("Submit".equalsIgnoreCase(action)) {
		 String StudDeptId=StudentDAO.getSavedApplication(app).getDepartment().getDeptID();
		 if(StudDeptId.equalsIgnoreCase(staffDept)){
			String status = request.getParameter(APPLICATION_STATUS);
			String email=StudentDAO.getSavedApplication(app).getStudent().getEmail();
			 String dept=StudentDAO.getSavedApplication(app).getDepartment().getDeptName();
			String degree=StudentDAO.getSavedApplication(app).getDegree().getDegName();
			String name=StudentDAO.getSavedApplication(app).getStudent().getFullName();
		 ApplicationDAO.updateAppStatus( app, status,empID);
		EmailDAO.emailStatusSender(email,studentId,dept,degree,name,status,app);
		request.setAttribute(MESSAGE, "Application Status has been Updated Successfully. Please select a search Criteria to review");	
		RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
		dispatcher.forward(request, response);
		 }
	 } else if ("Cancel".equalsIgnoreCase(action)) {
		 request.setAttribute(MESSAGE, "Please select a different search Criteria to review");
		 RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
			dispatcher.forward(request, response);
	
	 }
	}
	

}
