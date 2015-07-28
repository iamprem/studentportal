package com.sp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class StudentBaseController extends HttpServlet {

	public static final String DEPT_LIST = "deptList";
	public static final String COURSE_LIST = "courseList";
	public static final String DEPT_ID = "deptID";
	public static final String DEGREE_LIST="degreeList";
	public static final String DEG_ID="degID";
	
	
	@Override
	protected abstract void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException;

	@Override
	protected abstract void doPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException;
}
