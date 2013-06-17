package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import db.DB;

public class UserInfo {
	private static final long serialVersionUID = 1L;
	private int userid;
	private String userName;
	private String password;
	private String gender;
	private String address;
	private int type;

	public UserInfo() {
		super();
	}

	public UserInfo(int userid, String userName, String password,
			String gender, String address, int type) {
		super();
		this.userid = userid;
		this.userName = userName;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.type = type;
	}

	/**
	 * @return the userid
	 */
	public int getUserid() {
		return userid;
	}

	/**
	 * @param userid
	 *            the userid to set
	 */
	public void setUserid(int userid) {
		this.userid = userid;
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
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @param gender
	 *            the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ArrayList<UserInfo> findAll() throws SQLException,
			ClassNotFoundException {
		Connection conn = new DB().getConnection();

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from UserInfo");
		ArrayList<UserInfo> list = new ArrayList<UserInfo>();
		while (rs.next()) {
//			System.out.println("ID: " + rs.getInt(1) + " 用户名："
//					+ rs.getString(2) + "	密码：" + rs.getString(3) + " 性别："
//					+ rs.getString(4) + " 地址：" + rs.getString(5));
			UserInfo uinfo = new UserInfo(rs.getInt(1), rs.getString(2),
					rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
			list.add(uinfo);
		}
		rs.close();
		stmt.close();
		conn.close();
		return list;
	}

	public UserInfo findbyId(Long id) throws ClassNotFoundException,
			SQLException {
		UserInfo uinfo = null;
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("select * from UserInfo where userId=?");
		pStmt.setLong(1, id);
		ResultSet rs = pStmt.executeQuery();

		if (rs.next()) {
//			System.out.println("ID: " + rs.getInt(1) + " 用户名："
//					+ rs.getString(2) + "	密码：" + rs.getString(3) + " 性别："
//					+ rs.getString(4) + " 地址：" + rs.getString(5));
			uinfo = new UserInfo(rs.getInt(1), rs.getString(2),
					rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
		}
		rs.close();
		pStmt.close();
		conn.close();
		return uinfo;
	}

	public UserInfo findbyName(String username) throws ClassNotFoundException,
			SQLException {
		UserInfo uinfo = null;
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("select * from UserInfo where userName=?");
		pStmt.setString(1, username);
		ResultSet rs = pStmt.executeQuery();

		if (rs.next()) {
			// System.out.println("ID: " + rs.getInt(1) + " 用户名："+
			// rs.getString(2) + "	密码：" + rs.getString(3) + " 性别："+
			// rs.getString(4) + " 地址：" + rs.getString(5) + "用户类型" + rs.getInt(6));
			uinfo = new UserInfo(rs.getInt(1), rs.getString(2),
					rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
		}
		rs.close();
		pStmt.close();
		conn.close();
		return uinfo;
	}

	public boolean checkNameExist(String name) throws ClassNotFoundException,
			SQLException {
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("select * from UserInfo where userName=?");
		pStmt.setString(1, name);
		ResultSet rs = pStmt.executeQuery();

		if (rs.next()) {
			rs.close();
			pStmt.close();
			conn.close();
			return true;
		} else {
			rs.close();
			pStmt.close();
			conn.close();
			return false;
		}
	}

	public int delById(int id) throws ClassNotFoundException, SQLException {
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("delete from UserInfo where userId=?");
		pStmt.setInt(1, id);
		int result = pStmt.executeUpdate();
		pStmt.close();
		conn.close();
		return result;
	}
	
	public int upgradeById(int id) throws ClassNotFoundException, SQLException {
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("update UserInfo set type=2 where userId=?");
		pStmt.setInt(1, id);
		int result = pStmt.executeUpdate();
		pStmt.close();
		conn.close();
		return result;
	}

	public void register() throws ClassNotFoundException, SQLException {
		try {
			Connection conn = new DB().getConnection();
			PreparedStatement pStmt = conn
					.prepareStatement("insert into UserInfo (userName,password,gender,address,type) values(?,?,?,?,?)");
			pStmt.setString(1, getUserName());
			pStmt.setString(2, getPassword());
			pStmt.setString(3, getGender());
			pStmt.setString(4, getAddress());
			pStmt.setInt(5, getType());
			System.out.println(getUserName());
			int n = pStmt.executeUpdate();
			pStmt.close();
			conn.close();
			// if (n == 1) {
			// return true;
			// } else {
			// return false;
			// }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public boolean login() throws ClassNotFoundException, SQLException {
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("select * from UserInfo where userName=? and password=?");
		pStmt.setString(1, getUserName());
		pStmt.setString(2, getPassword());
		ResultSet rs = (ResultSet) pStmt.executeQuery();
		if (rs.next()) {
			rs.close();
			pStmt.close();
			return false;
		}
		conn.close();
		return true;
	}

	public int update(Long id, String pwd) throws ClassNotFoundException,
			SQLException {
		Connection conn = new DB().getConnection();
		PreparedStatement pStmt = conn
				.prepareStatement("update UserInfo set password=? where userId=?");
		pStmt.setString(1, pwd);
		pStmt.setLong(2, id);
		int n = pStmt.executeUpdate();
		pStmt.close();
		conn.close();
		return n;
	}
}
