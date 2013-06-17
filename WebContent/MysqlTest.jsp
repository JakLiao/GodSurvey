<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String driverClass = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jdbc?"
				+ "useUnicode=true&characterEncoding=GBK";
		String username = "root";
		String password = "123456";
		Class.forName(driverClass); // 加载数据库驱动
		Connection conn = DriverManager.getConnection(url, username,
				password); //建立连接
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from UserInfo"); //执行SQL语句
		while (rs.next()) {
			out.println("<br>用户名：" + rs.getString(2) + "	密码："
					+ rs.getString(3));
		}
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>