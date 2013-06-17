<%@ page language="java"
	import="com.*, java.util.*,com.service.*,com.service.impl.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<title>在线问卷调查系统</title>
</head>
<body>
	<div class="container">
		<div class="masthead">
			<form action="temp.jsp" method="post">
				<ul class="nav nav-pills pull-right">
					<li><input name="exit" class="btn btn-primary" type="submit"
						value="用户注销" /></li>
				</ul>
			</form>
			<h1>在线问卷调查系统</h1>
		</div>
		<%
			UserInfo vo = new UserInfo();
			vo = (UserInfo)session.getAttribute("userInfo");
			int type = vo.getType();
			//out.println("Type:"+vo.getType());
			if (type == 1) {
		%>
		<label>管理员：<%=vo.getUserName() %>，你好！</label><a href="userManagement.jsp" class="btn btn-success">用户管理</a>
		<%
			}
			else if(type == 2) {
		%>
		<label>问卷调查员：<%=vo.getUserName() %>，你好！</label>
		<%
			}
			else if(type == 3) {
		%>
		<label>普通用户：<%=vo.getUserName() %>，你好！</label>
		<%
			}
		%>
		<!-- <a href="addUser.jsp">增加用户</a> -->
		<!-- <form action="addpaper.jsp" method="post">
			<input name="exit" class="btn btn-primary" type="submit" value="添加问卷" />
		</form> -->
		<br>
		<%
			PaperService paperService = new PaperServiceImpl();
			List<Paper> papers = paperService.findAllPapers();
			//List<Paper> papers = (List<Paper>) session.getAttribute("papers");
			if (papers != null) {
				int pageAllCount = papers.size();
		%>

		<div class="maincontent">
			<div class="row-fluid">
				<div class="span10">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>问卷标题</th>
								<th>查看结果</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = pageAllCount - 1; i >= 0 ; i--) {
										Paper paper = papers.get(i);
							%>
							<tr>
								<td><a href="SurveyPage?paperId=<%=paper.getPaperId()%>"><%=paper.getPaperTitle()%></a></td>
								<td><a
									href="showresult.jsp?paperId=<%=paper.getPaperId()%>"
									class="btn btn-small">查看结果</a></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
				<% if(type == 1 || type == 2){ %>
				<div class="span2">
					<div class="right-button">
						<div class="row">
							<div class="span2"></div>
							<div class="span8 fabu">
								<a href="addpaper.jsp" class="btn btn-success">发布问卷</a>
							</div>
							<div class="span2"></div>
						</div>
					</div>
				</div>
				<%} %>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>