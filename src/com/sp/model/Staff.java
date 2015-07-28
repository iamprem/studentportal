package com.sp.model;


public class Staff {

	private int employee_id;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String ssn;
	private String stAddress;
	private String aptNo;
	private String city;
	private String stateOrUT;
	private String country;
	private String zipcode;
	
	public Staff(int employee_id, String firstName, String lastName, String email, String phone, String ssn,
			String stAddress, String aptNo, String city, String stateOrUT, String country, String zipcode) {
		super();
		this.employee_id = employee_id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.ssn = ssn;
		this.stAddress = stAddress;
		this.aptNo = aptNo;
		this.city = city;
		this.stateOrUT = stateOrUT;
		this.country = country;
		this.zipcode = zipcode;
	}

	public Staff() {
		super();
	}

	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
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

	public String getAptNo() {
		return aptNo;
	}

	public void setAptNo(String aptNo) {
		this.aptNo = aptNo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStateOrUT() {
		return stateOrUT;
	}

	public void setStateOrUT(String stateOrUT) {
		this.stateOrUT = stateOrUT;
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
	
	
	
	
}
