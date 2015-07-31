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
import com.sp.model.Staff;
import com.sp.model.Student;
import com.sp.model.StudentDashboard;
import com.sp.model.StudentLogin;
import com.sp.model.TestScore;

public class StudentDAO {

	private static List<StudentDashboard> studentDashboardList;

	public static void editStudent(String email, String firstName, String lastName, String phoneNumber, String ssn,
			String streetAddress, String aptNo, String city, String state, String country, String zipcode) {
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			// System.out.println("Editing Student");
			// System.out.println(email);
			String sql1 = "UPDATE student SET " + "firstName = '" + firstName + "', lastName = '" + lastName
					+ "',phone='" + phoneNumber + "', ssn='" + ssn + "', streetAddress='" + streetAddress
					+ "', apartmentNo='" + aptNo + "', city='" + city + "', stateOrTeritory='" + state + "', country='"
					+ country + "', zipcode='" + zipcode + "' WHERE email='" + email + "';";
			stmt = conn.DbConnectionForStatement();
			stmt.execute(sql1);
			System.out.println("Updated");
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
			// System.out.println("Fetching Student's all Application
			// overview");
			String sql1 = "SELECT S.student_id, S.firstName,S.lastName, A.app_id, A.deg_id, D.dept_name, A.desired_term, A.app_status "
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
				System.out.println("Before Null POint" + studentDashboard.toString());
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

	// To get the saved application application
	public static Application getSavedApplication(int app_id) {
		Statement stmt = null;
		DbConnection conn = null;
		Application application = null;
		Student student = null;
		ArrayList<TestScore> testScoreList = new ArrayList<TestScore>();
		Degree degree = null;
		Department department = null;

		try {
			conn = new DbConnection();
			// System.out.println("Fetching Student's specific Application");
			// System.out.println("App ID: " + app_id);
			String sql1 = "SELECT S.student_id, S.firstName,S.lastName, S.gender, S.email, S.dateOfBirth, S.phone, S.ssn,"
					+ "S.streetAddress, S.apartmentNo, S.city, S.stateOrTeritory, S.country, S.zipcode,"
					+ "S.degreeEarned, S.gpa, S.major, S.workOrgName, S.yearsWorked, S.keyRole,"
					+ "A.app_id, A.app_status, A.desired_term,A.applied_date, A.decision_date, "
					+ "A.app_status, A.sop_content, " + "D.dept_name, DEG.deg_name, DEG.deg_id, D.dept_id "
					+ "FROM student S " + "INNER JOIN application_applied A ON S.student_id=A.student_id "
					+ "INNER JOIN department D ON A.dept_id = D.dept_id "
					+ "INNER JOIN degree DEG ON A.deg_id = DEG.deg_id " + "WHERE A.app_id = " + app_id + ";";

			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			System.out.println("2");
			while (rs.next()) {
				// Student Profile
				System.out.println("1");
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
				String degreeEarned = rs.getString("degreeEarned");
				Double gpa = rs.getDouble("gpa");
				String major = rs.getString("major");
				String workOrgName = rs.getString("workOrgName");
				Double yearsWorked = rs.getDouble("yearsWorked");
				String keyRole = rs.getString("keyRole");
				// Application Details
				String app_status = rs.getString("app_status");
				String desired_term = rs.getString("desired_term");
				Date decision_date = rs.getDate("decision_date");
				Date applied_date = rs.getDate("applied_date");
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

				application = new Application(app_id, app_status, desired_term, decision_date, sop_content,
						applied_date);
				application.setStudent(student);
				application.setDegree(degree);
				application.setDepartment(department);
			}

			System.out.println(application.toString());
			// Get the student id from the previous query output
			int sql2_studId = application.getStudent().getStudent_id();

			String sql2 = "SELECT test_code, score, expiry_date " + "FROM student_taken_test" + " WHERE student_id = "
					+ sql2_studId + ";";
			stmt.close();
			stmt = conn.DbConnectionForPreparedStatement(sql2);
			ResultSet rs1 = stmt.executeQuery(sql2);

			while (rs1.next()) {
				String testCode = rs1.getString("test_code");
				Double score = rs1.getDouble("score");
				Date expiryDate = rs1.getDate("expiry_date");
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
		System.out.println("****" + application.toString());
		return application;

	}

	// Create Application SUBMIT
	public static void createApplication(Application application) {

		Statement stmt = null;
		DbConnection conn = null;
		Application app = application;
		Student student = app.getStudent();
		ArrayList<TestScore> testScoreList = student.getTestScoreList();

		try {
			conn = new DbConnection();
			// System.out.println("Create Student's Application");
			stmt = conn.DbConnectionForStatement();

			String sql1 = "INSERT INTO application_applied "
					+ " (desired_term, applied_date, student_id, deg_id, dept_id, app_status, sop_content)"
					+ " VALUES ('" + app.getDesired_term() + "',  CURDATE(), " + student.getStudent_id() + ", '"
					+ app.getDegree().getDegID() + "', '" + app.getDepartment().getDeptID() + "', '"
					+ app.getApp_status() + "', '" + app.getSop_content() + "');";
			stmt.execute(sql1);
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String dob = sdf.format(student.getDob());
			// System.out.println(dob);
			// System.out.println("sql1 complete");
			String sql2 = "UPDATE student SET " + "firstName = '" + student.getFirstName() + "', lastName = '"
					+ student.getLastName() + "', gender = '" + student.getGender() + "', dateOfBirth='" + dob
					+ "', phone='" + student.getPhone() + "', ssn='" + student.getSsn() + "', streetAddress='"
					+ student.getStAddress() + "', apartmentNo='" + student.getApartmentNo() + "', city='"
					+ student.getCity() + "', stateOrTeritory='" + student.getStateOrTeritory() + "', country='"
					+ student.getCountry() + "', zipcode='" + student.getZipcode() + "', degreeEarned='"
					+ student.getDegreeEarned() + "', gpa=" + student.getGpa() + ", major='" + student.getMajor()
					+ "', workOrgName='" + student.getWorkOrgName() + "', yearsWorked=" + student.getYearsWorked()
					+ ", keyRole='" + student.getKeyRole() + "' WHERE student_id=" + student.getStudent_id() + ";";
			stmt.execute(sql2);

			String sql3 = null;
			for (TestScore testScoreItem : testScoreList) {
				// System.out.println(testScoreItem.toString());
				try {
					// System.out.println("Inside try testscore");
					sql3 = "INSERT INTO student_taken_test (student_id, test_code, score, expiry_date) " + "value("
							+ student.getStudent_id() + ", '" + testScoreItem.getTestCode() + "', "
							+ testScoreItem.getScore() + ", " + "'2016-12-30');";
					stmt.execute(sql3);
				} catch (SQLException e) {
					// System.out.println("Inside catch testscore");
					sql3 = "UPDATE student_taken_test SET " + "score=" + testScoreItem.getScore()
							+ ", expiry_date='2016-12-30'" + " WHERE student_id=" + student.getStudent_id()
							+ " AND test_code='" + testScoreItem.getTestCode() + "';";
					stmt.execute(sql3);
					// e.printStackTrace();
				}

			}
			stmt.close();
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

	}

	// Update Applciation and SUBMIT
	public static void updateApplication(Application application) {

		Statement stmt = null;
		DbConnection conn = null;
		Application app = application;
		Student student = app.getStudent();
		ArrayList<TestScore> testScoreList = student.getTestScoreList();

		try {
			conn = new DbConnection();
			// System.out.println("Update Student's Application");
			stmt = conn.DbConnectionForStatement();

			String sql1 = "UPDATE application_applied SET " + "desired_term='" + app.getDesired_term() + "', "
					+ "applied_date=CURDATE(), deg_id='" + app.getDegree().getDegID() + "', " + "dept_id='"
					+ app.getDepartment().getDeptID() + "', " + "app_status='" + app.getApp_status() + "', "
					+ "sop_content='" + app.getSop_content() + "' WHERE app_id=" + app.getApp_id() + ";";

			stmt.execute(sql1);
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String dob = sdf.format(student.getDob());
			// System.out.println(dob);
			// System.out.println("sql1 complete");
			String sql2 = "UPDATE student SET " + "firstName = '" + student.getFirstName() + "', lastName = '"
					+ student.getLastName() + "', gender = '" + student.getGender() + "', dateOfBirth='" + dob
					+ "', phone='" + student.getPhone() + "', ssn='" + student.getSsn() + "', streetAddress='"
					+ student.getStAddress() + "', apartmentNo='" + student.getApartmentNo() + "', city='"
					+ student.getCity() + "', stateOrTeritory='" + student.getStateOrTeritory() + "', country='"
					+ student.getCountry() + "', zipcode='" + student.getZipcode() + "', degreeEarned='"
					+ student.getDegreeEarned() + "', gpa=" + student.getGpa() + ", major='" + student.getMajor()
					+ "', workOrgName='" + student.getWorkOrgName() + "', yearsWorked=" + student.getYearsWorked()
					+ ", keyRole='" + student.getKeyRole() + "' WHERE student_id=" + student.getStudent_id() + ";";
			stmt.execute(sql2);

			String sql3 = null;
			for (TestScore testScoreItem : testScoreList) {
				System.out.println(testScoreItem.toString());
				try {
					// System.out.println("Inside try testscore");
					sql3 = "INSERT INTO student_taken_test (student_id, test_code, score, expiry_date) " + "value("
							+ student.getStudent_id() + ", '" + testScoreItem.getTestCode() + "', "
							+ testScoreItem.getScore() + ", " + "'2016-12-30');";
					stmt.execute(sql3);
				} catch (SQLException e) {
					// System.out.println("Inside catch testscore");
					sql3 = "UPDATE student_taken_test SET " + "score=" + testScoreItem.getScore()
							+ ", expiry_date='2016-12-30'" + " WHERE student_id=" + student.getStudent_id()
							+ " AND test_code='" + testScoreItem.getTestCode() + "';";
					stmt.execute(sql3);
					// e.printStackTrace();
				}
			}
			stmt.close();
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
	}

	public static Student getStudent(String email) {
		Student student = null;
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			// System.out.println("Fetching Student all Application overview");
			// System.out.println("Email: " + email);
			String sql1 = "SELECT student_id, firstName, lastName, gender, email, dateOfBirth, phone, ssn, "
					+ "streetAddress, apartmentNo, city, stateOrTeritory, country, zipcode, degreeEarned, "
					+ "gpa, major, workOrgName, yearsWorked, keyRole " + "FROM student S WHERE S.email='" + email
					+ "';";
			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			while (rs.next()) {
				int student_id = rs.getInt("student_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String gender = rs.getString("gender");
				String emailUser = rs.getString("email");
				Date dateOfBirth = rs.getDate("dateOfBirth");
				String phone = rs.getString("phone");
				String ssn = rs.getString("ssn");
				String streetAddress = rs.getString("streetAddress");
				String apartmentNo = rs.getString("apartmentNo");
				String city = rs.getString("city");
				String stateOrTeritory = rs.getString("stateOrTeritory");
				String country = rs.getString("country");
				String zipcode = rs.getString("zipcode");
				String degreeEarned = rs.getString("degreeEarned");
				Double gpa = rs.getDouble("gpa");
				String major = rs.getString("major");
				String workOrgName = rs.getString("workOrgName");
				Double yearsWorked = rs.getDouble("yearsWorked");
				String keyRole = rs.getString("keyRole");

				student = new Student(student_id, firstName, lastName, gender, emailUser, dateOfBirth, phone, ssn,
						streetAddress, apartmentNo, city, stateOrTeritory, country, zipcode, degreeEarned, gpa, major,
						workOrgName, yearsWorked, keyRole);
			}
			// System.out.println(student.toString());
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
		return student;
	}

	public static boolean isEmailPresent(String email) {
		boolean result = false;
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			// System.out.println("Validating Email");
			// System.out.println(email);
			String sql1 = "SELECT * FROM student WHERE email = (\"" + email + "\")";
			stmt = conn.DbConnectionForStatement();
			ResultSet rs = stmt.executeQuery(sql1);

			if (rs.next()) {
				result = true;
			}

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
		return result;
	}

}
