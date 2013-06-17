<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dao.mysqlimpl.QuestionDaoImpl"%>
<%@page import="com.dao.QuestionDao"%>
<%@page import="com.Question"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问卷预览</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bookstrap-responsive.min.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
<script src="js/jquery-1.9.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/html5shiv.js"></script>
<style type="text/css">
body {
	background-repeat: repeat-x;
	background-attachment: fixed;
}

.container {
	margin-top: 15px;
}

.radio.inline.q2+.radio.inline.q2 {
	margin-right: 30px;
}

.survey {
	border: 1px;
	background-color: white;
	height: auto;
	margin: 0px;
	padding: 15px 0px 0px 30px;
}

.div_question {
	width: 96%;
	height: auto;
	border: 2px solid white;
	padding: 4px 4px;
	margin: 2px auto;
	border-bottom: 1px solid #EFEEEE;
}
</style>
</head>
<body>
	<div class="container">
		<div class="survey">
			<form action="main.jsp" method="post">
				<%
					QuestionDao questionDao = new QuestionDaoImpl();

					String ss = "";
					Integer paperIdInt = (Integer) session.getAttribute("paperId");
					int paperId = paperIdInt.intValue();
					List<Question> questions = questionDao
							.findQuestionsByPaperId(paperId);
					int totalNum = questions.size();
					int i = 1;
				%>
				<input type="hidden" name="totalNum" value=<%=questions.size()%>>
				<div class="div_question">
					<%
						for (Question question : questions) {
							ss = "q" + i;
					%>


					<label><h5>
							题目：<%=question.getQstTitle()%></h5> </label>
					<%
						String content = question.getQstOption();
							if (content != null && (question.getQstType() == 1)) {
								String[] options = content.split("#");
								for (String option : options) {
					%>
					<label class="radio"> <input type="radio" name=<%=ss%>
						id=<%=ss%> value=<%=i%>> <%=option%>
					</label>

					<%
						}
							} else if (content != null && (question.getQstType() == 3)) {
								String[] options = content.split("#");
								for (String option : options) {
					%>
					<label class="checkbox inline"> <input type="checkbox" name=<%=ss%>
						id=<%=ss%> value=<%=i%>> <%=option%>
					</label>

					<%
						}
							} else {
					%>
					<textarea rows="4" cols="50" name=<%=ss%>></textarea>
					<%
						}
							i++;
						}
					%>
					<br> <input class="btn btn-danger" type="submit" value="发布">
					<a href="addChoiceQuestion.jsp" class="btn btn-success">继续添加</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>