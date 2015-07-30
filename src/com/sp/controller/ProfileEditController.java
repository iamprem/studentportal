package com.sp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.dao.StudentDAO;

/**
 * Servlet implementation class ProfileEdit
 */
@WebServlet("/ProfileEditController")
public class ProfileEditController extends StudentBaseController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String email=request.getParameter(EMAIL);
		String userType = request.getParameter("userType");
		System.out.println("User email received" +email);
		System.out.println("User Type"+userType);
		if(userType.equals("student")){
		request.setAttribute(STUDENT,StudentDAO.getStudent(email));
		RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
		dispatcher.forward(request, response);
		return;
		}
		else if(userType.equals("faculty")){
			request.setAttribute("STAFF",StudentDAO.getStudent(email));
			RequestDispatcher dispatcher = request.getRequestDispatcher("staff_profile.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
