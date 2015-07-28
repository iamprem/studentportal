package com.sp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.dao.DepartmentDAO;
import com.sp.dao.StaffFilterDao;

/**
 * Servlet implementation class StaffFilterController
 */
@WebServlet("/StaffFilterController")
public class StaffFilterController extends StudentBaseController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffFilterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter(ACTION);
		String deptID =  request.getParameter(DEPT_ID);
		String degID =  request.getParameter(DEG_ID);
		if ("Submit".equalsIgnoreCase(action)) {
				String pgmApplied= request.getParameter(PGM_APPLIED);
				
				String gender= request.getParameter(GENDER);
				String gre= request.getParameter(GRE);
				//double gre=Double.parseDouble(greString);
				String gpa= request.getParameter(GPA);
				//double gpa=Double.parseDouble(gpaString);
				String country= request.getParameter(COUNTRY);
				request.setAttribute(FILTER_LIST,StaffFilterDao.filterList(pgmApplied,gender,gre,gpa,country));
				RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
				dispatcher.forward(request, response);	
				
	}
	}
}
