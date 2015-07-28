package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sp.model.Degree;
import com.sp.model.Department;
import com.sp.db.DbConnection;

public class DepartmentDAO {
	private static List<Department> departmentList;
	private static List<Degree> degreeList;

	public String test;


	public static List<Department> getDepartmentList() {
		departmentList = new ArrayList<Department>();

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM department;";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String deptID = rs.getString("dept_id");
				String deptName = rs.getString("dept_name");
				String researchDesc = rs.getString("research_description");
				int managerID = rs.getInt("manager_id");
				String imageUrl = rs.getString("imageURl");
				Department department = new Department(deptID, deptName, researchDesc, managerID, imageUrl);
				departmentList.add(department);
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

		return departmentList;
	}

	public static Department getDepartmentData(String deptId) {
		Department department = null;

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM department WHERE dept_id ='"+deptId+"';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String deptID = rs.getString("dept_id");
				String deptName = rs.getString("dept_name");
				String researchDesc = rs.getString("research_description");
				int managerID = rs.getInt("manager_id");
				String imageUrl = rs.getString("imageURl");
				department = new Department(deptID, deptName, researchDesc, managerID, imageUrl);
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
		return department;
	}
	
	
	
	public static List<Degree> getDegreeList(String deptID) {
		degreeList = new ArrayList<Degree>();

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM dept_has_degree where dept_id= '" + deptID + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String degID = rs.getString("deg_id");
				Double feeIS = rs.getDouble("fee_instate");
				Double feeOS = rs.getDouble("fee_outstate");
				String testCode1 = rs.getString("test1_code");
				Double testScore1 = rs.getDouble("test1_req_score");
				String testCode2 = rs.getString("test2_code");
				Double testScore2 = rs.getDouble("test2_req_score");
				String testCode3 = rs.getString("test3_code");
				Double testScore3 = rs.getDouble("test3_req_score");
				String criteria = rs.getString("rqrd_criteria");
				Date springDL = rs.getDate("deadline_spring");
				Date fallDL = rs.getDate("deadline_fall");
				Date summerDL = rs.getDate("deadline_summer");
				Degree degree = new Degree(degID, springDL, fallDL, summerDL, feeIS, feeOS, testCode1, testScore1,
						testCode2, testScore2, testCode3, testScore3, criteria);
				degreeList.add(degree);
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

		return degreeList;

	}

}
