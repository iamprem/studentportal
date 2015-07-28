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
	public static final String FILTER_LIST="filterList";
	public static final String DEG_ID="degID";
	public static final String COURSE_ID="courseID";
	public static final String COURSE_NAME="courseName";
	public static final String INS_METHOD="insMethod";
	public static final String CREDIT_HOURS="creditHours";
	public static final String MESSAGE = "Message";	
	public static final String COURSE="course";
	public static final String PGM_APPLIED="pgmApplied";
	public static final String GENDER="gender";
	public static final String GRE="gre";
	public static final String GPA="gpa";
	public static final String EMAIL="email";
	public static final String COUNTRY="country";
	public static final String ACTION="action";
	public static final String STUDENTDASHBOARDLIST = "studentDashboardList";

	@Override
	protected abstract void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException;

	@Override
	protected abstract void doPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException;
}
