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
<title>调查问卷结果</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/css/bookstrap-responsive.min.css"
	rel="stylesheet" type="text/css">
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

.plength {
	width: 60%;
	text-align: center;
}

.mastfoot {
	text-align: center;
	margin: 10px 0px 5px;
}
</style>

</head>
<body>
	<div class="container">
		<div class="survey">
			<form action="" method="post">
				<%
					//out.println(request.getContextPath()+"/css/bootstrap.min.css"); //test the filepath
					QuestionDao questionDao = new QuestionDaoImpl();
					//Integer paperIdiInteger = (Integer) session.getAttribute("paperId");//回答问卷后显示结果
					//int paperId = paperIdiInteger.intValue();
					String paperIdString = request.getParameter("paperId");//从主页请求访问
					int paperId = Integer.parseInt(paperIdString);

					List<Question> questions = questionDao.showResultByPaperId(paperId);
					int totalNum = questions.size();
					int i = 1;
					String ss = "";
				%>
				<input type="hidden" name="totalNum" value=totalNum>
				<div class="div_question">
					<%
						for (Question question : questions) {
							ss = "q" + i;
					%>
					<label><%=i%>、<%=question.getQstTitle()%> </label>
					<%
						String content = question.getQstOption();
							if (content != null && (question.getQstType() == 1)) {
								String[] options = content.split("#");
								int j = 0;//跟踪选择的值变化
								for (String option : options) {
					%>
					<label class="radio"> <input type="radio" name=<%=ss%>
						id=<%=ss%> value=<%=j%>> <%=option%>
					</label>
					<%
						j++;
								}
								String answesrString = question.getQstAnswer();
								String answer[] = answesrString.split("&");
								int answerInt[] = new int[answer.length];
								int totalCount = 0;
								for (int k = 0; k < answer.length; k++) {
									answerInt[k] = Integer.parseInt(answer[k]);
									totalCount += answerInt[k];
								}
								if (totalCount != 0) {
					%>

					<div class="plength">
						<div class="progress">
							<div class="bar bar-success"
								style="width: <%=(answerInt[0] * 100 / totalCount)%>%;">
								A:<%=(answerInt[0] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-warning"
								style="width: <%=(answerInt[1] * 100 / totalCount)%>%;">
								B:<%=(answerInt[1] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-danger"
								style="width: <%=(answerInt[2] * 100 / totalCount)%>%;">
								C:<%=(answerInt[2] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-success"
								style="width: <%=(100 - (answerInt[0] * 100 / totalCount)
								- (answerInt[1] * 100 / totalCount) - (answerInt[2] * 100 / totalCount))%>%">
								D:<%=(100 - (answerInt[0] * 100 / totalCount)
								- (answerInt[1] * 100 / totalCount) - (answerInt[2] * 100 / totalCount))%>%
							</div>
						</div>
					</div>
					<%
						} else {
					%>
					<div class="plength">
						<div class="progress"></div>
					</div>
					<%
						}
							} else if (content != null && (question.getQstType() == 3)) {
								String[] options = content.split("#");
								int j = 0;//跟踪选择的值变化
								for (String option : options) {
					%>
					<label class="checkbox inline"> <input type="checkbox"
						name=<%=ss%> id=<%=ss%> value=<%=j%>> <%=option%>
					</label>
					<%
						j++;
								}
								String answesrString = question.getQstAnswer();
								String answer[] = answesrString.split("&");
								int answerInt[] = new int[answer.length];
								int totalCount = 0;
								for (int k = 0; k < answer.length; k++) {
									answerInt[k] = Integer.parseInt(answer[k]);
									totalCount += answerInt[k];
								}
								if (totalCount != 0) {
					%>

					<div class="plength">
						<div class="progress">
							<div class="bar bar-success"
								style="width: <%=(answerInt[0] * 100 / totalCount)%>%;">
								A:<%=(answerInt[0] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-warning"
								style="width: <%=(answerInt[1] * 100 / totalCount)%>%;">
								B:<%=(answerInt[1] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-danger"
								style="width: <%=(answerInt[2] * 100 / totalCount)%>%;">
								C:<%=(answerInt[2] * 100 / totalCount)%>%
							</div>
							<div class="bar bar-success"
								style="width: <%=(100 - (answerInt[0] * 100 / totalCount)
								- (answerInt[1] * 100 / totalCount) - (answerInt[2] * 100 / totalCount))%>%">
								D:<%=(100 - (answerInt[0] * 100 / totalCount)
								- (answerInt[1] * 100 / totalCount) - (answerInt[2] * 100 / totalCount))%>%
							</div>
						</div>
					</div>
					<%
						} else {
					%>
					<div class="plength">
						<div class="progress"></div>
					</div>
					<%
						}
							} else {
					%>
					<textarea rows="4" cols="50" name=<%=ss%>><%=question.getQstAnswer()%></textarea>
					<%
						}
							i++;
						}
					%>
				</div>
			</form>
			<a href="main.jsp" class="btn btn-primary">返回首页</a>
		</div>
	</div>
</body>
</html>