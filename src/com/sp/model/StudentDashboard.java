package com.sp.model;

public class StudentDashboard {
	


	private String firstName;
	private String lastName;
	private String email;
	private int app_id;
	private String dept_name;
	private String deg_id;
	private String app_status;
	private String desired_term;
	
	public StudentDashboard() {
		super();
	}

	public StudentDashboard(String firstName, String lastName, String email, int app_id, String dept_name,
			String deg_id, String app_status, String desired_term) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.app_id = app_id;
		this.dept_name = dept_name;
		this.deg_id = deg_id;
		this.app_status = app_status;
		this.setDesired_term(desired_term);
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getApp_id() {
		return app_id;
	}

	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public String getDeg_id() {
		return deg_id;
	}

	public void setDeg_id(String deg_id) {
		this.deg_id = deg_id;
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
	
	@Override
	public String toString() {
		return "StudentDashboard [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", app_id="
				+ app_id + ", dept_name=" + dept_name + ", deg_id=" + deg_id + ", app_status=" + app_status
				+ ", desired_term=" + desired_term + "]";
	}
	
}
