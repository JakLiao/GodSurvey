<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<title>用户管理</title>
</head>
<body>
	<%
		String username = "";
		if (session.getAttribute("username") != null) {
			username = session.getAttribute("username").toString();
		} else {
			//out.println("<script>window.alert('登录已超时!');window.history.go(-1);</script>");
			// response.sendRedirect("login.jsp");
		}
	%>

	<jsp:useBean id="user" class="com.UserInfo" type="com.UserInfo"
		scope="session" />
	<%
		ArrayList<UserInfo> userlist = user.findAll();
	%>
	<jsp:useBean id="login" class="com.LoginInfo" type="com.LoginInfo"
		scope="session" />
	<%
		ArrayList<LoginInfo> list = login.findAll();
		if (userlist == null || userlist.size() == 0) {
	%>

	不存在用户
	<%
		} else {
	%>
	<div class="container">
		<div>
			<form action="main.jsp" method="post">
				<ul class="nav nav-pills pull-right">
					<li><input name="back" class="btn btn-primary" type="submit"
						value="返回首页" /></li>
				</ul>
			</form>
			<h1>用户管理</h1>
		</div>
		<div class="row-fluid">
			<div class="span10">
				<table class="table table-striped table-hover">
					<tr>
						<th>用户名</th>
						<th>登录时间</th>
						<th>注销时间</th>
					</tr>
					<%
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getUserName()%></td>
						<td><%=list.get(i).getLoginTime()%></td>
						<td><%=list.get(i).getLogoutTime()%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="row-fluid">
				<div class="span10">
					<table class="table table-striped table-hover">
						<tr>
							<th>用户名</th>
							<th>密码</th>
							<th>性别</th>
							<th>地址</th>
							<th>用户类型</th>
							<th>操作</th>
						</tr>
						<%
							for (int i = 0; i < userlist.size(); i++) {
									int type = userlist.get(i).getType();
									String typeStr = "";
									switch (type) {
									case 1:
										typeStr = "管理员";
										break;
									case 2:
										typeStr = "问卷调查人";
										break;
									case 3:
										typeStr = "普通用户";
										break;
									default:
										break;
									}
									if( type == 1 ) continue; //不显示管理员 
						%>
						<tr>
							<td><%=userlist.get(i).getUserName()%></td>
							<td><%=userlist.get(i).getPassword()%></td>
							<td><%=userlist.get(i).getGender()%></td>
							<td><%=userlist.get(i).getAddress()%></td>
							<td><%=typeStr%></td>
							<td><a class="btn btn-danger"
								href="AdminServlet?deleteId=<%=userlist.get(i).getUserid()%>">删除此账号</a>
								<a class="btn btn-primary"
								href="AdminServlet?upgradeId=<%=userlist.get(i).getUserid()%>">升级用户为用户调查人</a>
							</td>
						</tr>
						<%
							}
						%>
					</table>
				</div>


				<div class="span2">
					<div class="right-button">
						<div class="row">
							<div class="span2"></div>
							<div class="span8 fabu">
								<a href="adduser.jsp" class="btn btn-success">添加用户</a>
							</div>
							<div class="span2"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>