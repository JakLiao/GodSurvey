<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
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

.buttonspace {
	margin-left: 20px;
	padding: 20px 0px 0px 3px;
}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>添加问答题</title>
</head>
<body>
	<div class="container1">
		<div class="maincontent">
			<ul class="nav nav-pills">
				<li><a href="addChoiceQuestion.jsp">单选题</a></li>
				<li class="active"><a href="addAnswerQuestion.jsp">问答题</a></li>
				<li><a href="addMultiChoiceQt.jsp">多选题</a></li>
			</ul>
			<form action="QuestionServlet" method="post" class="form-horizontal">
				<input type="hidden" value="2" name="qstType">
				<div class="control-group">
					<label class="control-label" for="inputTitle">问题题目</label>
					<div class="controls">
						<textarea rows="4" cols="50" name="qstTitle" placeholder="输入问题题目 "></textarea>
					</div>
				</div>
				<input type="submit" name="sumbit"
					class="btn btn-success buttonspace" value="添加">
			</form>
		</div>
	</div>
</body>
</html>