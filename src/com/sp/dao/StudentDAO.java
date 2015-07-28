package com.sp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.sp.db.DbConnection;
import com.sp.model.Course;
import com.sp.model.StudentDashboard;

public class StudentDAO {

	private static List<StudentDashboard> studentDashboardList;

	public static void addStudent(String email, String password) {
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			System.out.println("Adding users");
			System.out.println(email);
			System.out.println(password);
			String sql1 = "INSERT INTO student(email) values (\"" + email + "\")";
			String sql2 = "INSERT INTO user_student(user_stud_email,user_stud_pwd) values (\"" + email + "\",\""
					+ password + "\");";
			stmt = conn.DbConnectionForStatement();
			stmt.execute(sql1);
			stmt.execute(sql2);
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
				if (conn != null)
					conn.close();
			}
		}
	}

	// To get the student application details for his dashboard
	public static List<StudentDashboard> getStudentDash(String email) {

		Statement stmt = null;
		DbConnection conn = null;
		try {

			conn = new DbConnection();
			System.out.println("Fetching Student's Application");
			String sql1 = "SELECT S.firstName,S.lastName, S.app_id, A.deg_id, A.dept_name, A.desired_term, A.app_status "
					+ "FROM student S " + "INNER JOIN application_applied A ON S.student_id=A.app_id "
					+ "INNER JOIN department D ON A.dept_id = D.dept_id" + "WHERE S.email = '" + email + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);

			while (rs.next()) {
				int app_id = rs.getInt("course_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String deg_id = rs.getString("deg_id");
				String dept_name = rs.getString("dept_name");
				String desired_term = rs.getString("desired_term");
				String app_status = rs.getString("app_status");
				StudentDashboard studentDashboard = new StudentDashboard(firstName, lastName, email, app_id, dept_name,
						deg_id, app_status, desired_term);
				studentDashboardList.add(studentDashboard);
			}
			rs.close();
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
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

		return studentDashboardList;
	}

}
