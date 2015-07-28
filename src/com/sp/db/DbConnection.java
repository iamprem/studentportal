package com.sp.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnection {
	Connection con = null;
	public String test;
	protected String databaseName;
	
	public DbConnection(){
		this.test = null;
		this.databaseName = "studentportal_alpha";
	}
	
	
	public Statement DbConnectionForStatement() {
		con = null;
		Statement ps = null;
		try {
          Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url="jdbc:mysql://104.236.243.205:3306/"+this.databaseName;
			String username="deepak";
			String password="rohan";
			con = DriverManager.getConnection(url,username,password);
			ps = con.createStatement();			
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;	
	}
	
	public Statement DbConnectionForPreparedStatement(String sql) {
		con = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url="jdbc:mysql://104.236.243.205:3306/"+this.databaseName;
			String user="deepak";
			String pass="rohan";
			con = DriverManager.getConnection(url,user,pass);
			ps = con.prepareStatement(sql);			
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;	
	}
	
	public void close(){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}