package com.sp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sp.db.DbConnection;

public class StudentDAO {

	public void getDB() {
		Statement stmt = null;
		DbConnection conn = null;
		try {

			conn = new DbConnection();
			// String query="select * from actor";
			System.out.println("xx'");
			String sql = "select * from student";

			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {

				String namex = rs.getString("firstName");
				System.out.println("xxx" + namex);
			}

			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.err.println("Conneection failurer");
		}
		// TODO: handle exception

		// TODO Auto-generated method stub

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

}
