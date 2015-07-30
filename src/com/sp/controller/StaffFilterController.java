package com.sp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.DepartmentDAO;
import com.sp.dao.StaffFilterDao;
import com.sp.model.Staff;

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
		HttpSession session = request.getSession(true);
		String staffDept= null;
		if(null !=session.getAttribute("STAFF")){
			staffDept= ((Staff) session.getAttribute("STAFF")).getdeptId();}
		
		if ("Submit".equalsIgnoreCase(action)) {
				String pgmApplied= request.getParameter("pgmApplied");
				String gender= request.getParameter("gender");
				String testCode = request.getParameter("testCode");
				String scoreOp = request.getParameter("op"); 
				String score= request.getParameter("score");
				String gpaOp = request.getParameter("gpaop"); 
				String gpa= request.getParameter("gpa");
				String country = request.getParameter("country");
				request.setAttribute(FILTER_LIST,StaffFilterDao.filterList(staffDept,gender,testCode,scoreOp,score,gpaOp,gpa,country));
			RequestDispatcher dispatcher = request.getRequestDispatcher("filter.jsp");
				dispatcher.forward(request, response);	
				
	}
	}
}
