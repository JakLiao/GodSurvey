<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*,db.DB" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			Connection conn = new DB().getConnection();
			String username = session.getAttribute("username").toString();
			String sql = "update loginfo set logoutTime ='"
					+ new java.util.Date().toString()
					+ "' where username ='" + username + "'";
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<jsp:forward page="login.jsp" />
</body>
</html>