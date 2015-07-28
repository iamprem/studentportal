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
				Course course = new Course(courseID,courseName,insMethod,creditHours);
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
}
