package com.sp.model;

import java.util.Date;

public class TestScore {
	private String testCode;
	private Double score;
	private Date expiryDate;
	
	public TestScore(String testCode, Double score, Date expiryDate) {
		super();
		this.testCode = testCode;
		this.score = score;
		this.expiryDate = expiryDate;
	}

	public String getTestCode() {
		return testCode;
	}

	public void setTestCode(String testCode) {
		this.testCode = testCode;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	
}
