package com.sp.model;

import java.util.Date;

public class Application {

	private int app_id;
	private String app_status;
	private String desired_term;
	private Date applied_date;
	private Date decision_date;
	private Student student;
	private Degree degree;
	private Department department;
	private Staff reviewer;
	private String sop_content;
	private int studentID;
	
	

	public Application() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Application(int app_id, String app_status, String desired_term, Date applied_date, Date decision_date,
			Student student, Degree degree, Department department, Staff reviewer, String sop_content) {
		super();
		this.app_id = app_id;
		this.app_status = app_status;
		this.desired_term = desired_term;
		this.applied_date = applied_date;
		this.decision_date = decision_date;
		this.student = student;
		this.degree = degree;
		this.department = department;
		this.reviewer = reviewer;
		this.sop_content = sop_content;
	}

	//To create application
	public Application(int app_id, String app_status, String desired_term, Student student, Degree degree,
			Department department, String sop_content) {
		super();
		this.app_id = app_id;
		this.app_status = app_status;
		this.desired_term = desired_term;
		this.student = student;
		this.degree = degree;
		this.department = department;
		this.sop_content = sop_content;
	}

	//Simple Constructor
	public Application(int app_id, String app_status, String desired_term, Date decision_date, String sop_content, Date applied_date) {
		super();
		this.app_id = app_id;
		this.app_status = app_status;
		this.desired_term = desired_term;
		this.decision_date = decision_date;
		this.sop_content = sop_content;
		this.applied_date = applied_date;
	}
	

	@Override
	public String toString() {
		return "Application [app_id=" + app_id + ", app_status=" + app_status + ", desired_term=" + desired_term
				+ ", applied_date=" + applied_date + ", decision_date=" + decision_date + ", student=" + student
				+ ", degree=" + degree + ", department=" + department + ", reviewer=" + reviewer + ", sop_content="
				+ sop_content + "]";
	}

	public int getApp_id() {
		return app_id;
	}

	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}

	public String getApp_status() {
		return app_status;
	}

	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}

	public String getDesired_term() {
		return desired_term;
	}

	public void setDesired_term(String desired_term) {
		this.desired_term = desired_term;
	}

	public Date getApplied_date() {
		return applied_date;
	}

	public void setApplied_date(Date applied_date) {
		this.applied_date = applied_date;
	}

	public Date getDecision_date() {
		return decision_date;
	}

	public void setDecision_date(Date decision_date) {
		this.decision_date = decision_date;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Degree getDegree() {
		return degree;
	}

	public void setDegree(Degree degree) {
		this.degree = degree;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Staff getReviewer() {
		return reviewer;
	}

	public void setReviewer(Staff reviewer) {
		this.reviewer = reviewer;
	}

	public String getSop_content() {
		return sop_content;
	}

	public void setSop_content(String sop_content) {
		this.sop_content = sop_content;
	}

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

}
