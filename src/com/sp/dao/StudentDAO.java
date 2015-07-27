package com.sp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sp.db.DbConnection;

public class StudentDAO {

	
	
	public void getDB()
	{
		Statement stmt = null;
		DbConnection conn = null;
		try{
			
		  conn = new DbConnection();
				//String query="select * from actor";
		System.out.println("xx'");
			String sql="select * from student";
				
				stmt = conn.DbConnectionForPreparedStatement(sql);			
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()){
					
					String namex = rs.getString("firstName");
					System.out.println("xxx"+namex);
				}
				
				rs.close();
				stmt.close();
				conn.close();
		}
			catch (Exception e) {
				System.err.println("Conneection failurer");
		}
			// TODO: handle exception
	
		// TODO Auto-generated method stub

	}
	
	}
