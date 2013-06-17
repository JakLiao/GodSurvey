package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.DB;

public class LoginInfo {
	private String userName;
	private String loginTime;
	private String logoutTime;

	public LoginInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginInfo(String userName, String loginTime, String logoutTime) {
		super();
		this.userName = userName;
		this.loginTime = loginTime;
		this.logoutTime = logoutTime;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the loginTime
	 */
	public String getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime
	 *            the loginTime to set
	 */
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	/**
	 * @return the logoutTime
	 */
	public String getLogoutTime() {
		return logoutTime;
	}

	/**
	 * @param logoutTime
	 *            the logoutTime to set
	 */
	public void setLogoutTime(String logoutTime) {
		this.logoutTime = logoutTime;
	}

	public ArrayList<LoginInfo> findAll() throws SQLException,
			ClassNotFoundException {
		Connection conn = new DB().getConnection();

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from loginfo");
		ArrayList<LoginInfo> list = new ArrayList<LoginInfo>();
		while (rs.next()) {
			LoginInfo loginInfo = new LoginInfo(rs.getString(1),
					rs.getString(2), rs.getString(3));
			list.add(loginInfo);
		}
		rs.close();
		stmt.close();
		conn.close();
		return list;
	}

	public void addLoginTime() throws ClassNotFoundException, SQLException {
		String userName = this.getUserName();
		// System.out.println(userName);
		Connection conn = new DB().getConnection();
		String sql = "select * from loginfo where username ='" + userName + "'";
		Statement stmt = conn.createStatement();
		ResultSet rs = (ResultSet) stmt.executeQuery(sql);
		try {
			if (rs.next()) {
				// System.out.println("update login time.");
				sql = "update  loginfo set loginTime='"
						+ new java.util.Date().toString() + "'where userName='"
						+ userName + "'";
				stmt.executeUpdate(sql);
			} else {
				// System.out.println("add new user login time");
				sql = "insert into loginfo(username,loginTime) values('"
						+ userName + "','" + new java.util.Date().toString()
						+ "')";
				// System.out.println(sql);
				stmt.executeUpdate(sql);
			}
		} catch (Exception e) {
		}
		rs.close();
		stmt.close();
		conn.close();
	}

}
