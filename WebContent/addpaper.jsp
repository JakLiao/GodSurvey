<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add paper</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 40px;
}

.container1 {
	margin: auto;
	width: 960px;
}

.maincontent {
	margin-top: 40px;
	height: auto;
}

#inputTitle {
	height: 30px;
	line-height: 30px;
}
</style>
<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container1">
		<div class="maincontent">
			<form action="AddPaper" method="post" class="form-horizontal">

				<h3>发布问卷</h3>
				<div class="control-group">
					<label class="control-label" for="inputTitle">问卷标题</label>
					<div class="controls">
						<input type="text" id="inputTitle" placeholder="输入问卷标题"
							name="paperTitle">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputType">问卷类别</label>
					<div class="controls">
						<select name="paperType">
							<option value="1">金融</option>
							<option value="2">美食</option>
							<option value="3">IT</option>
							<option value="4">医疗健康</option>
							<option value="5">手机</option>
							<option value="6">游戏爱好者</option>
							<option value="7">旅游</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPaperSummary">问卷摘要介绍</label>
					<div class="controls">
						<textarea rows="3" cols="50" placeholder="输入问卷摘要"
							id="inputPaperSummary" name="paperSummary"></textarea>
					</div>
				</div>
				<br>
				<div class="control-group">
					<input type="reset" value="重置" class="btn btn-success"> <input
						type="submit" class="btn btn-success" value="下一步">
				</div>
			</form>
		</div>
	</div>
</body>
</html>