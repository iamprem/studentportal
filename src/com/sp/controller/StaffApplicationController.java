package com.sp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.dao.ApplicationDAO;
import com.sp.dao.StaffFilterDao;
import com.sp.dao.StudentDAO;

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
		request.setAttribute(APPLICATION,ApplicationDAO.retrieveApp(app));
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
		String deptID =  request.getParameter(DEPT_ID);
		String degID =  request.getParameter(DEG_ID);
		int studentId=Integer.parseInt(studentID);
		String action = request.getParameter(ACTION);
		String status = request.getParameter(APPLICATION_STATUS);
		//String email=StudentDAO.getApplication(app).getStudent().getEmail();
	 if ("Submit".equalsIgnoreCase(action)) {
		 ApplicationDAO.updateAppStatus( app, status);
	 } else if ("Cancel".equalsIgnoreCase(action)) {
	 } 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
			dispatcher.forward(request, response);
	 
		
	}

}
