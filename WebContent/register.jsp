<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 40px;
}

.container-narrow {
	margin: 0 auto;
	max-width: 960px;
}
</style>
</head>
<body>
	<div class="container-narrow">
		<div>
			<form action="login.jsp" method="post">
				<ul class="nav nav-pills pull-right">
					<li><input name="back" class="btn btn-primary" type="submit"
						value="返回登录" /></li>
				</ul>
			</form>
			<h1>用户注册</h1>
		</div>
		<div>
			<form id="form1" name="form1" action="RegisterServlet" method="POST">
				<input type="hidden" name="jump" value="0" />
				<table>
					<tr>
						<td align="right">用户名：</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td><input type="password" name="pwd" /></td>
					</tr>
					<tr>
						<td align="right">密码确认：</td>
						<td><input type="password" name="pwd1" /></td>
					</tr>
					<tr>
						<td align="right">性别：</td>
						<td><input type="radio" name="sex" value="男"
							checked="checked" /> 男 <input type="radio" name="sex" value="女" />
							女</td>
					</tr>
					<tr>
						<td align="right">地址：</td>
						<td><input type="text" name="address" /></td>
					</tr>
					<tr>
						<td align="right">用户类型：</td>
						<td align="right"><select name="type">
								<option value="3">普通用户</option>
								<option value="2">问卷调查人</option>
								<option value="1">管理员</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input id="submit"
							name="submit" type="submit" class="btn btn-primary" value="注册" />
							<input type="reset" value="重置" class="btn" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>