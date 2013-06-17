package com.dao.mysqlimpl;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	protected int result;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Loading Database Engine Failed !");
		}
	}

	/**
	 * Connect Database
	 */
	public void getConn() {
		String url = "jdbc:mysql://localhost:3306/jdbc?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false";
		try {
			conn = DriverManager.getConnection(url);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Conn Failed !");
		}
	}

	/**
	 * Close All Database Conn
	 */
	public void closeAll() {
		try {
			if (pstmt != null && !pstmt.isClosed()) {
				pstmt.close();
			}
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Close Database Conn ERROR !");
		}
	}

	/**
	 * Database Query
	 */
	public void doQuery(String sql, Object... params) {
		try {
			pstmt = conn.prepareStatement(sql);
			if (pstmt != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Query ERROR !");
		}
	}

	/**
	 * Database Operate
	 */
	public void doOperate(String sql, Object... params) {
		try {
			pstmt = conn.prepareStatement(sql);
			if (pstmt != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Operate ERROR !");
		}
	}

	/**
	 * Check If Exist Tables
	 */
	boolean existTable(String tableName) {
		DatabaseMetaData meta;
		try {
			meta = conn.getMetaData();
			ResultSet rs = meta.getTables(null, null, tableName, null);
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Check If Exits Tables Failed !");
		}
		return false;
	}

}
