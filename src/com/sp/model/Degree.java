package com.sp.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Degree {
	private String degID;
	private String degName;
	private Date springDL;
	private Date fallDL;
	private Date summerDL;
	private double instateFee;
	private double outstateFee;
	private String test1Code;
	private double test1ReqScore;
	private String test2Code;
	private double test2ReqScore;
	private String test3Code;
	private double test3ReqScore;
	private String reqCriteria;
	List<Course> courses = new ArrayList<Course>();
	
	
	public Degree(String degID,  Date springDL, Date fallDL, Date summerDL, double instateFee,
			double outstateFee, String test1Code, double test1ReqScore, String test2Code, double test2ReqScore,
			String test3Code, double test3ReqScore, String reqCriteria) {
		super();
		this.degID = degID;
		this.springDL = springDL;
		this.fallDL = fallDL;
		this.summerDL = summerDL;
		this.instateFee = instateFee;
		this.outstateFee = outstateFee;
		this.test1Code = test1Code;
		this.test1ReqScore = test1ReqScore;
		this.test2Code = test2Code;
		this.test2ReqScore = test2ReqScore;
		this.test3Code = test3Code;
		this.test3ReqScore = test3ReqScore;
		this.reqCriteria = reqCriteria;
	}
	public Date getSpringDL() {
		return springDL;
	}
	public void setSpringDL(Date springDL) {
		this.springDL = springDL;
	}
	public Date getFallDL() {
		return fallDL;
	}
	public void setFallDL(Date fallDL) {
		this.fallDL = fallDL;
	}
	public Date getSummerDL() {
		return summerDL;
	}
	public void setSummerDL(Date summerDL) {
		this.summerDL = summerDL;
	}
	public double getInstateFee() {
		return instateFee;
	}
	public void setInstateFee(double instateFee) {
		this.instateFee = instateFee;
	}
	public double getOutstateFee() {
		return outstateFee;
	}
	public void setOutstateFee(double outstateFee) {
		this.outstateFee = outstateFee;
	}
	public String getTest1Code() {
		return test1Code;
	}
	public void setTest1Code(String test1Code) {
		this.test1Code = test1Code;
	}
	public double getTest1ReqScore() {
		return test1ReqScore;
	}
	public void setTest1ReqScore(double test1ReqScore) {
		this.test1ReqScore = test1ReqScore;
	}
	public String getTest2Code() {
		return test2Code;
	}
	public void setTest2Code(String test2Code) {
		this.test2Code = test2Code;
	}
	public double getTest2ReqScore() {
		return test2ReqScore;
	}
	public void setTest2ReqScore(double test2ReqScore) {
		this.test2ReqScore = test2ReqScore;
	}
	public String getTest3Code() {
		return test3Code;
	}
	public void setTest3Code(String test3Code) {
		this.test3Code = test3Code;
	}
	public double getTest3ReqScore() {
		return test3ReqScore;
	}
	public void setTest3ReqScore(double test3ReqScore) {
		this.test3ReqScore = test3ReqScore;
	}
	public String getReqCriteria() {
		return reqCriteria;
	}
	public void setReqCriteria(String reqCriteria) {
		this.reqCriteria = reqCriteria;
	}
	
	public String getDegID() {
		return degID;
	}
	public void setDegID(String degID) {
		this.degID = degID;
	}
	public String getDegName() {
		return degName;
	}
	public void setDegName(String degName) {
		this.degName = degName;
	}
	
	

}
