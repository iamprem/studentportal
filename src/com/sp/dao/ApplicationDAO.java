package com.sp.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sp.db.DbConnection;
import com.sp.model.Application;
import com.sp.model.Course;
import com.sp.model.Degree;
import com.sp.model.Department;
import com.sp.model.Staff;
import com.sp.model.Student;

public class ApplicationDAO {

	
	
		public static Application retrieveApp(String appID) {
			Application app=null;
		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM application_applied where app_id= '" + appID +"';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int appId = rs.getInt("app_id");
				String appStatus = rs.getString("app_status");
				String desTerm = rs.getString("desired_term");
				Date appliedDate=rs.getDate("applied_date");
				Date decisionDate=rs.getDate("decision_date");
				int studentId = rs.getInt("student_id");
				String degId = rs.getString("deg_id");
				String deptId = rs.getString("dept_id");
				String sopContent = rs.getString("sop_content");
				
				 app=new Application( appId,  appStatus,  desTerm, appliedDate,decisionDate,
						sopContent, studentId, deptId,degId);
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

		return app;

	}


	
}
