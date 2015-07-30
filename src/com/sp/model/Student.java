package com.sp.model;

import java.util.ArrayList;
import java.util.Date;

public class Student {
	
	private int student_id;
	private String firstName;
	private String lastName;
	private String gender;
	private String email;
	private Date dob;
	private String phone;
	private String ssn;
	private String stAddress;
	private ArrayList<TestScore> testScoreList;
	private String apartmentNo;
	private String city;
	private String stateOrTeritory;
	private String country;
	private String zipcode;
	private String degreeEarned;
	private Double gpa;
	private String major;
	private String workOrgName;
	private Double yearsWorked;
	private String keyRole;
	
	
	public Student() {
		super();
	}

	public Student(String firstName, String lastName, String gender, String email, Date dob, String phone, String ssn,
			String stAddress) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.dob = dob;
		this.phone = phone;
		this.ssn = ssn;
		this.stAddress = stAddress;
	}
	
	
	//With Test Score
	public Student(String firstName, String lastName, String gender, String email, Date dob, String phone, String ssn,
			String stAddress, ArrayList<TestScore> testScoreList, String apartmentNo, String city,
			String stateOrTeritory, String country, String zipcode, String degreeEarned, Double gpa, String major,
			String workOrgName, Double yearsWorked, String keyRole) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.dob = dob;
		this.phone = phone;
		this.ssn = ssn;
		this.stAddress = stAddress;
		this.testScoreList = testScoreList;
		this.apartmentNo = apartmentNo;
		this.city = city;
		this.stateOrTeritory = stateOrTeritory;
		this.country = country;
		this.zipcode = zipcode;
		this.degreeEarned = degreeEarned;
		this.gpa = gpa;
		this.major = major;
		this.workOrgName = workOrgName;
		this.yearsWorked = yearsWorked;
		this.keyRole = keyRole;
	}

	//Without TestScore list
	public Student(int student_id, String firstName, String lastName, String gender, String email, Date dob, String phone, String ssn,
			String stAddress, String apartmentNo, String city,
			String stateOrTeritory, String country, String zipcode, String degreeEarned, Double gpa, String major,
			String workOrgName, Double yearsWorked, String keyRole) {
		super();
		this.setStudent_id(student_id);
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.dob = dob;
		this.phone = phone;
		this.ssn = ssn;
		this.stAddress = stAddress;
		this.apartmentNo = apartmentNo;
		this.city = city;
		this.stateOrTeritory = stateOrTeritory;
		this.country = country;
		this.zipcode = zipcode;
		this.degreeEarned = degreeEarned;
		this.gpa = gpa;
		this.major = major;
		this.workOrgName = workOrgName;
		this.yearsWorked = yearsWorked;
		this.keyRole = keyRole;
	}
	
	
	
	public Student(int student_id, String firstName, String lastName, String gender, String email, Date dob,
			String phone, String ssn, String stAddress, ArrayList<TestScore> testScoreList, String apartmentNo,
			String city, String stateOrTeritory, String country, String zipcode, String degreeEarned, Double gpa,
			String major, String workOrgName, Double yearsWorked, String keyRole) {
		super();
		this.student_id = student_id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.dob = dob;
		this.phone = phone;
		this.ssn = ssn;
		this.stAddress = stAddress;
		this.testScoreList = testScoreList;
		this.apartmentNo = apartmentNo;
		this.city = city;
		this.stateOrTeritory = stateOrTeritory;
		this.country = country;
		this.zipcode = zipcode;
		this.degreeEarned = degreeEarned;
		this.gpa = gpa;
		this.major = major;
		this.workOrgName = workOrgName;
		this.yearsWorked = yearsWorked;
		this.keyRole = keyRole;
	}

	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", firstName=" + firstName + ", lastName=" + lastName + ", gender="
				+ gender + ", email=" + email + ", dob=" + dob + ", phone=" + phone + ", ssn=" + ssn + ", stAddress="
				+ stAddress + ", testScoreList=" + testScoreList + ", apartmentNo=" + apartmentNo + ", city=" + city
				+ ", stateOrTeritory=" + stateOrTeritory + ", country=" + country + ", zipcode=" + zipcode
				+ ", degreeEarned=" + degreeEarned + ", gpa=" + gpa + ", major=" + major + ", workOrgName="
				+ workOrgName + ", yearsWorked=" + yearsWorked + ", keyRole=" + keyRole + "]";
	}

	public Student(String email) {
		super();
		this.email = email;
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
	
	public String getFullName()
	{
		return this.firstName+" "+this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getStAddress() {
		return stAddress;
	}

	public void setStAddress(String stAddress) {
		this.stAddress = stAddress;
	}

	public ArrayList<TestScore> getTestScoreList() {
		return testScoreList;
	}

	public void setTestScoreList(ArrayList<TestScore> testScoreList) {
		this.testScoreList = testScoreList;
	}

	public String getKeyRole() {
		return keyRole;
	}

	public void setKeyRole(String keyRole) {
		this.keyRole = keyRole;
	}
	
	public String getApartmentNo() {
		return apartmentNo;
	}

	public void setApartmentNo(String apartmentNo) {
		this.apartmentNo = apartmentNo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStateOrTeritory() {
		return stateOrTeritory;
	}

	public void setStateOrTeritory(String stateOrTeritory) {
		this.stateOrTeritory = stateOrTeritory;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getDegreeEarned() {
		return degreeEarned;
	}

	public void setDegreeEarned(String degreeEarned) {
		this.degreeEarned = degreeEarned;
	}

	public Double getGpa() {
		return gpa;
	}

	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getWorkOrgName() {
		return workOrgName;
	}

	public void setWorkOrgName(String workOrgName) {
		this.workOrgName = workOrgName;
	}

	public Double getYearsWorked() {
		return yearsWorked;
	}

	public void setYearsWorked(Double yearsWorked) {
		this.yearsWorked = yearsWorked;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

}
