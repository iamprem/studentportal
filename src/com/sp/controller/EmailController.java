package com.sp.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sp.dao.DepartmentDAO;
import com.sp.dao.EmailDAO;

/**
 * Servlet implementation class EmailController
 */
@WebServlet("/EmailController")
public class EmailController extends StudentBaseController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailController() {
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
		// TODO Auto-generated method stub
		String email=request.getParameter(EMAIL);
		if(EmailDAO.getUserByID(email)==1){
		EmailDAO.emailGenerator(email);
		
		
		request.setAttribute(MESSAGE, "Mail has been Sent to your email Address !!!");}
		else
		{
			request.setAttribute(MESSAGE, "Invalid email. Mail has not been Sent");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("forgotPwd.jsp");
		dispatcher.forward(request, response);
	}



}
