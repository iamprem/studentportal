package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sp.db.DbConnection;
import com.sp.model.Student;

public class EmailDAO {
	private static List<String> studentList;

	public static int getUserByID(String email) {
		Statement stmt = null;
		Statement stmt1 = null;
		int count = 0;
		int count1 = 0;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql1, sql2;
			sql1 = "SELECT count(*) AS rowcount FROM user_student where user_stud_email= '" + email + "';";
			sql2 = "SELECT count(*) AS rowcount1 FROM user_staff where user_staf_email= '" + email + "';";
			stmt = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			rs.next();
			count = rs.getInt("rowcount");

			stmt1 = conn.DbConnectionForPreparedStatement(sql2);
			ResultSet rs1 = stmt1.executeQuery(sql2);
			rs1.next();
			count1 = rs1.getInt("rowcount1");
			rs.close();
			rs1.close();
			stmt1.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (stmt1 != null) {
					stmt1.close();
				}
			} catch (SQLException se2) {
			}
			if (conn != null)
				conn.close();
		}
		if (count == 1 || count1 == 1) {
			return 1;
		}

		return 0;

	}

	public static List<String> getStudentList() {
		studentList = new ArrayList<String>();

		Statement stmt = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql;
			sql = "SELECT * FROM user_student;";
			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String emailId = rs.getString("user_stud_email");
				studentList.add(emailId);
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

		return studentList;

	}

	public static void UpdateEmailTrigger(String deptID, String degID, int iD, String courseName, String insMethod, String credHrs) {
		final String username = "studentreguncc@gmail.com";
		final String password = "student1!";
		List<String> students = getStudentList();
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("gany@gmail.com"));
			for (int i = 0; i < students.size(); i++) {

				message.addRecipient(Message.RecipientType.TO, new InternetAddress(students.get(i)));
			}
			message.setSubject("New Course Update");
			message.setText("Dear "+ deptID +" User," + "\n\n" + "A new Course has been added/Modified to the degree "+degID
					+ "\n\nPlease find the details below:\n\n"
					+"Course ID: "+iD +"\nCourseName : "+courseName+"\nInstruction Method : "+insMethod+"\nCredit Hours : "+credHrs
					+"\n\nPlease Visit the site for further details."
					+ "\n\nRegards," + "\n\nAdmin" + "");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public static String passwordFinder(String email) {
		Statement stmt = null;
		Statement stmt1 = null;
		String studPassword = null;
		String staffPassword = null;
		DbConnection conn = null;
		try {
			conn = new DbConnection();
			String sql, sql1;
			sql1 = "SELECT * FROM user_staff where user_staf_email= '" + email + "';";
			sql = "SELECT * FROM user_student where user_stud_email= '" + email + "';";

			stmt = conn.DbConnectionForPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				studPassword = rs.getString("user_stud_pwd");
			}

			stmt1 = conn.DbConnectionForPreparedStatement(sql1);
			ResultSet rs1 = stmt1.executeQuery(sql1);
			while (rs1.next()) {
				staffPassword = rs.getString("user_staf_pwd");
			}
			rs.close();
			rs1.close();
			stmt.close();
			stmt1.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (stmt1 != null) {
					stmt1.close();
				}
			} catch (SQLException se2) {
			}
			if (conn != null)
				conn.close();
		}
		if (studPassword != null) {
			return studPassword;
		}
		if (staffPassword != null) {
			return staffPassword;
		}

		return null;
	}

	public static void emailGenerator(String email) {
		final String username = "studentreguncc@gmail.com";
		final String password = "student1!";
		String[] to = { email };
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		String finder = passwordFinder(email);
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("gany@gmail.com"));
			for (int i = 0; i < to.length; i++) {
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to[i]));
			}
			/*
			 * message.addRecipients(Message.RecipientType.TO,
			 * InternetAddress.parse
			 * ("ganeshr131289@gmail.com, ganyz89@gmail.com")); String address =
			 * ""; InternetAddress[] iAdressArray =
			 * InternetAddress.parse(address);
			 * message.setRecipients(Message.RecipientType.BCC, iAdressArray);
			 */
			message.setSubject("Password Reset");
			message.setText("Dear User," + "\n\n" + "Please find below the old password for your account " + email
					+ "\n\nPassword:" + finder
					+ "\n\nKindly Change your password after logging in for security details." + "\n\nRegards,"
					+ "\n\nAdmin" + "");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

}
