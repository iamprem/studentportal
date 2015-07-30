package com.sp.model;

public class Course {
	private int courseID;
	private String courseName;
	private String insMethod;
	private int creditHours;
	private String deptID;
	private String degID;
	private String courseDescription;
	private String coursePrerequisites;
	
	
	public Course(int courseID, String courseName, String insMethod, int creditHours, String deptID, String degID, String courseDescription, String coursePrerequisites) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.insMethod = insMethod;
		this.creditHours = creditHours;
		this.deptID = deptID;
		this.degID = degID;
		this.courseDescription = courseDescription;
		this.coursePrerequisites = coursePrerequisites;
	}
	public Course(int courseID, String courseName, String insMethod, int creditHours, String courseDescription, String coursePrerequisites) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.insMethod = insMethod;
		this.creditHours = creditHours;
		this.courseDescription = courseDescription;
		this.coursePrerequisites = coursePrerequisites;
	}
	public String getDeptID() {
		return deptID;
	}
	public void setDeptID(String deptID) {
		this.deptID = deptID;
	}
	public String getDegID() {
		return degID;
	}
	public void setDegID(String degID) {
		this.degID = degID;
	}
	public void setInsMethod(String insMethod) {
		this.insMethod = insMethod;
	}
	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getInsMethod() {
		return insMethod;
	}
	public void setInsMehod(String insMethod) {
		this.insMethod = insMethod;
	}
	public int getCreditHours() {
		return creditHours;
	}
	public void setCreditHours(int creditHours) {
		this.creditHours = creditHours;
	}
	public String getCourseDescription() {
		return courseDescription;
	}
	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}
	public String getCoursePrerequisites() {
		return coursePrerequisites;
	}
	public void setCoursePrerequisites(String coursePrerequisites) {
		this.coursePrerequisites = coursePrerequisites;
	}
	
}
