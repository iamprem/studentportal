package com.sp.dao;

import java.util.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import com.sp.db.DbConnection;


public class ApplicationDAO {

	/*public static Application retrieveApp(int appID) {
		Application app=null;

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM application_applied where app_id= '" + appID + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int appId = rs.getInt("app_id");
				String appStatus = rs.getString("app_status");
				String desTerm = rs.getString("desired_term");
				Date appliedDate = rs.getDate("applied_date");
				Date decisionDate = rs.getDate("decision_date");
				int studentId = rs.getInt("student_id");
				String degId = rs.getString("deg_id");
				String deptId = rs.getString("dept_id");
				String sopContent = rs.getString("sop_content");

				app = new Application(appId, appStatus, desTerm, appliedDate, decisionDate, sopContent, studentId,
					deptId, degId);
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

	}*/

	public static void updateAppStatus(int appID,String status) {
		Statement stmt = null;
		DbConnection conn = null;
    	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	Date date = new java.util.Date();
    String decDate=	dateFormat.format(date);
    	try{
			conn = new DbConnection();
			String sql;
			sql = "UPDATE application_applied SET app_status ='"+status+"' , decision_date='" +decDate +"'where app_id='"+appID+"';";
			System.out.println("sssssssssssssss"+sql);
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
	
	
}
