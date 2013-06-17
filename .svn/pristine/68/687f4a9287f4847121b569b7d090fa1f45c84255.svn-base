<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加多选题</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<!--[if lt IE 9]>
     	<script src="js/html5shiv.js"></script>
<![endif]-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 40px;
}

.container1 {
	margin: auto;
	width: 960px;
}
/*内容部分*/
.maincontent {
	margin-top: 40px;
	height: auto;
}

.right-button {
	border-width: 3px;
	border-color: red;
	margin: 0;
	padding: 30px 0px 0px 3px;
}

.buttonspace {
	margin-left: 20px;
	padding: 20px 0px 0px 3px;
}

.controls input {
	height: 30px;
	line-height: 30px;
}
</style>
</head>
<body>
	<div class="container1">
		<div class="maincontent">
			<ul class="nav nav-pills">
				<li><a href="addChoiceQuestion.jsp">单选题</a></li>
				<li><a href="addAnswerQuestion.jsp">问答题</a></li>
				<li class="active"><a href="addMultiChoiceQt.jsp">多选题</a></li>
			</ul>

			<form action="QuestionServlet" method="post" class="form-horizontal">
				<input type="hidden" value="3" name="qstType">
				<div class="control-group">
					<label class="control-label" for="inputTitle">问题题目</label>
					<div class="controls">
						<textarea rows="4" cols="50" name="qstTitle" placeholder="输入问题题目 "></textarea>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputOption">A、</label>
					<div class="controls">
						<input type="text" id="inputOption" placeholder="输入选项内容"
							name="qstOption1">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputOption">B、</label>
					<div class="controls">
						<input type="text" id="inputOption" placeholder="输入选项内容"
							name="qstOption2">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputOption">C、</label>
					<div class="controls">
						<input type="text" id="inputOption" placeholder="输入选项内容"
							name="qstOption3">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputOption">D、</label>
					<div class="controls">
						<input type="text" id="inputOption" placeholder="输入选项内容"
							name="qstOption4">
					</div>
				</div>
				<input type="submit" name="sumbit" class="btn btn-success"
					value="继续添加">
			</form>

		</div>
	</div>
</body>
</html>