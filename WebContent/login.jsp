<%@ page language="java" import="com.*, java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/htm l; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<div class="container-narrow">
	<form id="form2" name="form2" action="LoginServlet" method="POST"
		onsubmit="return userCheck()">
		<div class="control-group">
			<label class="control-label" for="inputUserName">账号</label>
			<div class="controls">
				<input type="text" id="username" name="username"
					placeholder="username">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">密码</label>
			<div class="controls">
				<input type="password" id="pwd" name="pwd" placeholder="password">
			</div>
		</div>
		<div class="control-group controls">
			<button type="submit" class="btn btn-primary">登录</button>
			<button type="reset" class="btn">重置</button>
		</div>
		<a href="register.jsp">用户注册</a>
	</form>
	</div>
	<script>
		function userCheck() {
			if (document.form2.username.value == "") {
				window.alert("用户名不能为空");
				return false;
			}
			if (document.form2.pwd.value == "") {
				window.alert("密码不能为空");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>