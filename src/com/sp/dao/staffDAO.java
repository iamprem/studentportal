package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.sp.db.DbConnection;
import com.sp.model.Staff;
import com.sp.model.StudentDashboard;

public class staffDAO {
	public staffDAO() {
		// TODO Auto-generated constructor stub
	}

	private static List<Staff> staffList;

	public static List<Staff> getStaff(String email) {
		Statement stmt = null;
		DbConnection conn = null;
		staffList = new ArrayList<Staff>();
		try {
			conn = new DbConnection();
			System.out.println("Fetching Staff all Application overview");
			String sql1 = "SELECT S.employee_id,S.firstName,S.lastName,S.ssn,S.phone,S.streetAddress,S.apartmentNo,S.city,S.stateOrTeritory,S.country,S.zipcode,W.dept_id from staff S INNER JOIN staff_worksin_dept W on S.employee_id=W.employee_id WHERE S.email='"
					+ email + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			while (rs.next()) {
				int app_id = rs.getInt("app_id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String ssn = rs.getString("lastName");
				String phone = rs.getString("phone");
				String streetAddress = rs.getString("streetAddress");
				String apartmentNo = rs.getString("apartmentNo");
				String city = rs.getString("city");
				String stateOrTeritory = rs.getString("stateOrTeritory");
				String country = rs.getString("country");
				String zipcode = rs.getString("zipcode");
				String dept_id = rs.getString("dept_id");
				Staff staff = new Staff(app_id, firstName, lastName, ssn, phone, streetAddress, apartmentNo, city,
						stateOrTeritory, country, zipcode, dept_id);
				System.out.println("Before Null POint" + staff.toString());
				staffList.add(staff);
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
		return staffList;
	}

}
