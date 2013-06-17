package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	static String driverClass = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/jdbc?useUnicode=true&characterEncoding=utf-8";
	static String username = "root";
	static String password = "123456";

	static {
		try {
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() throws ClassNotFoundException,
			SQLException {
		return DriverManager.getConnection(url, username, password); 
	}
}
