package com.sp.model;

public class StaffFilter {
	private String lastName;
	private String testCodes;
	private Double gre;
	private Double gpa;
	private String firstName;
	private String gender;
	private String country;
	private int studentID;
	private int appID;
	private String deptID;



	public StaffFilter(String lastName, String testCodes, Double gre, Double gpa, String firstName, String gender,
			String country, int studentID, int appID, String deptID) {
		super();
		this.lastName = lastName;
		this.testCodes = testCodes;
		this.gre = gre;
		this.gpa = gpa;
		this.firstName = firstName;
		this.gender = gender;
		this.country = country;
		this.studentID = studentID;
		this.appID = appID;
		this.deptID = deptID;
	}

	public String getDeptID() {
		return deptID;
	}

	public void setDeptID(String deptID) {
		this.deptID = deptID;
	}



	public String getTestCodes() {
		return testCodes;
	}

	public void setTestCodes(String testCodes) {
		this.testCodes = testCodes;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Double getGre() {
		return gre;
	}

	public void setGre(Double gre) {
		this.gre = gre;
	}

	public Double getGpa() {
		return gpa;
	}

	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public int getAppID() {
		return appID;
	}

	public void setAppID(int appID) {
		this.appID = appID;
	}

}
