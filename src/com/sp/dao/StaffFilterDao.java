package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sp.db.DbConnection;
import com.sp.model.Degree;
import com.sp.model.StaffFilter;

public class StaffFilterDao {
	private static List<StaffFilter> filterList;

	public static List<StaffFilter> filterList(String pgmApplied, String gender, String testCode, String scoreOp, String score, String gpaOp, String gpa, String country) {
		filterList = new ArrayList<StaffFilter>();
		
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql="select S.student_id,S.firstName, S.lastName,S.email,S.gender,S.country,S.gpa,A.app_id,A.app_status,A.applied_date,A.decision_date,A.dept_id,T.test_code,T.score,T.expiry_date from student S INNER JOIN application_applied A on S.student_id=A.student_id INNER JOIN student_taken_test T on S.student_id=T.student_id "
					+ "WHERE A.dept_id like '" + pgmApplied + "' AND T.test_code like '" + testCode + "' AND S.country like '" + country + "' AND S.gender like '"+ gender+"' AND S.gpa  "+gpaOp+ gpa +" AND T.score " + scoreOp+score + " and A.app_Status in ('Processing','Submitted');";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {

				int studentID = rs.getInt("student_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String genders = rs.getString("gender");
				Double gpas = rs.getDouble("gpa");
				String testCodes=rs.getString("test_code");
				Double gres = rs.getDouble("score");
				String countrys = rs.getString("country");
				String deptId = rs.getString("dept_id");
				int appID = rs.getInt("app_id");
				StaffFilter staffFilters = new StaffFilter(lastName,testCodes, gres, gpas, firstName, genders, countrys,
						studentID, appID,deptId);
				filterList.add(staffFilters);
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

		return filterList;

	}
}
