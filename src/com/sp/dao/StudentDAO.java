package com.sp.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sp.db.DbConnection;
import com.sp.model.Application;
import com.sp.model.Degree;
import com.sp.model.Department;
import com.sp.model.Student;
import com.sp.model.StudentDashboard;
import com.sp.model.TestScore;

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
		studentDashboardList = new ArrayList<StudentDashboard>();
		try {

			conn = new DbConnection();
			System.out.println("Fetching Student's all Application overview");
			String sql1 = "SELECT S.firstName,S.lastName, A.app_id, A.deg_id, D.dept_name, A.desired_term, A.app_status "
					+ "FROM student S " + "INNER JOIN application_applied A ON S.student_id=A.student_id "
					+ "INNER JOIN department D ON A.dept_id = D.dept_id" + " WHERE S.email = '" + email + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);

			while (rs.next()) {
				int app_id = rs.getInt("app_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String deg_id = rs.getString("deg_id");
				String dept_name = rs.getString("dept_name");
				String desired_term = rs.getString("desired_term");
				String app_status = rs.getString("app_status");
				StudentDashboard studentDashboard = new StudentDashboard(firstName, lastName, email, app_id, dept_name,
						deg_id, app_status, desired_term);
				System.out.println("Before Null POint"+studentDashboard.toString());
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

	// To get the applied application
	public static Application getApplication(int app_id) {
		Statement stmt = null;
		DbConnection conn = null;
		Application application = null;
		Student student = null;
		ArrayList<TestScore> testScoreList = new ArrayList<TestScore>();
		Degree degree = null;
		Department department = null;

		try {
			//TODO: Check Query in workbench first
			conn = new DbConnection();
			System.out.println("Fetching Student's specific Application");
			String sql1 = "SELECT S.student_id, S.firstName,S.lastName, S.gender, S.email, S.dateOfBirth, S.phone, S.ssn,"
					+ "S.streetAddress, S.apartmentNo, S.city, S.stateOrTeritory, S.country, S.zipcode,"
					+ "S.degreeEarned, S.gpa, S.major, S.workOrgName, S.yearsWorked, S.keyRole"
					+ "A.app_id, A.app_status, A.desired_term, A.decision_date, " + "A.app_status, A.sop_content, "
					+ "D.dept_name, DEG.deg_name, DEG.deg_id, D.dept_id, " + "FROM student S "
					+ "INNER JOIN application_applied A ON S.student_id=A.student_id "
					+ "INNER JOIN department D ON A.dept_id = D.dept_id "
					+ "INNER JOIN degree DEG ON A.deg_id = DEG.deg_id " + "WHERE A.app_id = '" + app_id + "';";

			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);

			while (rs.next()) {
				// Student Profile
				int student_id = rs.getInt("student_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String gender = rs.getString("gender");
				String email = rs.getString("email");
				Date dateOfBirth = rs.getDate("dateOfBirth");
				String phone = rs.getString("phone");
				String ssn = rs.getString("ssn");
				String streetAddress = rs.getString("streetAddress");
				String apartmentNo = rs.getString("apartmentNo");
				String city = rs.getString("city");
				String stateOrTeritory = rs.getString("stateOrTeritory");
				String country = rs.getString("country");
				String zipcode = rs.getString("zipcode");
				String degreeEarned = rs.getString("degreeEarend");
				Double gpa = rs.getDouble("gpa");
				String major = rs.getString("major");
				String workOrgName = rs.getString("workOrgName");
				Double yearsWorked = rs.getDouble("yearsWorked");
				String keyRole = rs.getString("keyRole");
				// Application Details
				String app_status = rs.getString("app_status");
				String desired_term = rs.getString("desired_term");
				Date decision_date = rs.getDate("decision_date");
				String sop_content = rs.getString("sop_content");
				// Degree
				String deg_id = rs.getString("deg_id");
				String deg_name = rs.getString("deg_name");
				// Department
				String dept_id = rs.getString("dept_id");
				String dept_name = rs.getString("dept_name");

				student = new Student(student_id, firstName, lastName, gender, email, dateOfBirth, phone, ssn,
						streetAddress, apartmentNo, city, stateOrTeritory, country, zipcode, degreeEarned, gpa, major,
						workOrgName, yearsWorked, keyRole);
				department = new Department(dept_id, dept_name);
				degree = new Degree(deg_id, deg_name);

				application = new Application(app_id, app_status, desired_term, decision_date, sop_content);
				application.setStudent(student);
				application.setDegree(degree);
				application.setDepartment(department);
			}

			// Get the student id from the previous query output
			int sql2_studId = application.getStudent().getStudent_id();

			String sql2 = "SELECT test_code, score, expiry_date" + "FROM student_test_taken" + "WHERE student_id = '"
					+ sql2_studId + "';";
			stmt.close();
			stmt = conn.DbConnectionForPreparedStatement(sql2);
			ResultSet rs1 = stmt.executeQuery(sql2);

			while (rs1.next()) {
				String testCode = rs1.getString("test_code");
				Double score = rs1.getDouble("score");
				Date expiryDate = rs1.getDate("expiryDate");
				TestScore testScore = new TestScore(testCode, score, expiryDate);
				testScoreList.add(testScore);
			}

			student.setTestScoreList(testScoreList);
			stmt.close();
			rs.close();
			rs1.close();
			conn.close();
			
		} catch (SQLException e) {
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
		System.out.println("****"+application.toString());
		return application;

	}

}
