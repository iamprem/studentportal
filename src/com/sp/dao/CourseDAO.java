package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



import com.sp.db.DbConnection;
import com.sp.model.Course;

public class CourseDAO {
	private static List<Course> courseList;
	
	
	public static List<Course> getCourseList(String deptID,String degID) {
		courseList = new ArrayList<Course>();

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM course_offered where dept_id= '" + deptID + "'and deg_id='"+ degID +"';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int courseID = rs.getInt("course_id");
				String courseName = rs.getString("course_name");
				String insMethod = rs.getString("instruction_method");
				int creditHours = rs.getInt("credit_hours");
				String courseDesc = rs.getString("description");
				String coursePrereq = rs.getString("prerequisite");
				Course course = new Course(courseID,courseName,insMethod,creditHours,courseDesc,coursePrereq);
				courseList.add(course);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			if (conn != null)
				conn.close();
		}

		return courseList;

	}
public static Course getCourseByID(int courseID) {
		Statement stmt = null;
		Course course = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM course_offered where course_id= '" + courseID  +"';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int coursesID = rs.getInt("course_id");
				String courseName = rs.getString("course_name");
				String insMethod = rs.getString("instruction_method");
				int creditHours = rs.getInt("credit_hours");
				String deptID=rs.getString("dept_id");
				String degID=rs.getString("deg_id");
				String courseDesc = rs.getString("description");
				String coursePrereq = rs.getString("prerequisite");
				course = new Course(coursesID,courseName,insMethod,creditHours,deptID,degID,courseDesc,coursePrereq);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			if (conn != null)
				conn.close();
		}

		return course;

}

public static void addCourse(String deptID, String degID, int courseID, String courseName, String insMethod, String credHrs, String courseDesc, String PreReq) {
{ 
	Statement stmt = null;
	DbConnection conn = null;
	try{			
		
			conn = new DbConnection();
		
		String sql;
		sql = "INSERT into course_offered(course_id,dept_id,deg_id,course_name,instruction_method,credit_hours,description,prerequisite) values(\"" +courseID+ "\",\"" + deptID + "\",\""+degID+"\",\""+courseName+"\",\""+insMethod+"\",\""+credHrs+"\",\""+courseDesc+"\",\""+PreReq+"\");";
		stmt = conn.DbConnectionForStatement();
		stmt.execute(sql);
	    stmt.close();
		conn.close();
	}catch(SQLException se){
		se.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt!=null)
				stmt.close();
		}catch(SQLException se2){
		if(conn!=null)
			conn.close();
		}    
}


}


}
public static void updateCourse(int iD, String courseName, String insMethod, int hrs, String courseDesc, String coursePrereq) {
	Statement stmt = null;
	DbConnection conn = null;

	try{
			conn = new DbConnection();
		String sql;
		sql = "UPDATE course_offered SET course_id ='"+iD+"',course_name =\""+courseName+"\",instruction_method =\""+ insMethod + "\",credit_hours='"+hrs+"' WHERE course_id = '"+iD+"';";
		stmt = conn.DbConnectionForStatement();
		stmt.execute(sql);
	    stmt.close();
		conn.close();
	}catch(SQLException se){
		se.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt!=null)
				stmt.close();
		}catch(SQLException se2){
		}		if(conn!=null)
			conn.close();
	}   
	
}
public static void deleteCourseByCode(int courseID) {
	Statement stmt = null;
	DbConnection conn = null;
	try{
			conn = new DbConnection();
		String sql1;
		
		sql1 = "Delete from course_offered where course_id = '"+ courseID + "';";
		stmt = conn.DbConnectionForStatement();
		stmt.execute(sql1);
	    stmt.close();
		conn.close();
	}catch(SQLException se){
		se.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt!=null)
				stmt.close();
		}catch(SQLException se2){
		}		if(conn!=null)
			conn.close();
	}	
}}


