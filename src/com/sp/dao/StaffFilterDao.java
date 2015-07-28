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

	public static List filterList(String pgmApplied, String gender, String gre, String gpa, String country) {
		filterList = new ArrayList<StaffFilter>();

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM student s,application_applied a,student_taken_test b where s.student_id=a.student_id and s.student_id=b.student_id and a.dept_id= '"
					+ pgmApplied
					
					+ "'and s.gender='"
					+ gender
					
					+ "'and s.country='" + country + "';";
			
			/*+ "'and s.score'"
			+ gre
			+ "'and s.gpa'"
			+ gpa*/
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {

				int studentID = rs.getInt("student_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String genders = rs.getString("gender");
				Double gpas = rs.getDouble("gpa");
				Double gres = rs.getDouble("score");
				String countrys = rs.getString("country");
				int appID = rs.getInt("app_id");
				StaffFilter staffFilters = new StaffFilter(lastName, gres, gpas, firstName, genders, countrys,
						studentID, appID);
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
