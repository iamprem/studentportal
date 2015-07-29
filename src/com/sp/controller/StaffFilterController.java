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
	private static final String FILTER_LIST = null;
       
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
		String sql = "SELECT * FROM Students";
		
		if ("Submit".equalsIgnoreCase(action)) {
				String pgmApplied= request.getParameter("pgmApplied");
				String gender= request.getParameter("gender");
				String testType = request.getParameter("testType");
				String greop = request.getParameter("op"); 
				String gre= request.getParameter("score");
				String gpaop = request.getParameter("gpaop"); 
				String gpa= request.getParameter("gpa");
				String country = request.getParameter("country");
				if(!pgmApplied.equals("ALL")){
					sql += " WHERE pgmApplied ="+pgmApplied;
				}
				System.out.println(pgmApplied);
				System.out.println(gender);
				System.out.println(testType);
				System.out.println(gre);
				System.out.println(greop);
				System.out.println(gpa);
				System.out.println(gpaop);
				System.out.println(country);
				System.out.println(sql);
//				String gre= request.getParameter(GRE);
//				//double gre=Double.parseDouble(greString);
//				String gpa= request.getParameter(GPA);
//				//double gpa=Double.parseDouble(gpaString);
//				String country= request.getParameter(COUNTRY);
//				request.setAttribute(FILTER_LIST,StaffFilterDao.filterList(pgmApplied,gender,gre,gpa,country));
//				RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
//				dispatcher.forward(request, response);	
				
	}
	}
}
