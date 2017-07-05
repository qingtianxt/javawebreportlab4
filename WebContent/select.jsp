<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ page import="jdbc.courseDao,java.util.*,entity.course"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">查询页面</h1>
	<hr>
	<br>
	<br>
	<br>
		<table border="1" align="center">
			<tr><th>序号</th><th>课程号</th><th>课程名</th><th>学分</th></tr>
			<%
			request.setCharacterEncoding("UTF-8");
				courseDao sdao = new courseDao();
				List<course> list = sdao.selectAll();
				for(int i = 0;i < list.size();i++)
				{
					course s = list.get(i);
					out.println("<tr><td>" + (i + 1) + "</td><td>" + s.getNum() + "</td><td>" +  s.getName() + "</td><td>" + s.getScore()+"</td>");
				}
				 %>
		</table>
		<div align="center">
			<a href="homePage.jsp"><input type="button" value="返回主页面"></a>
		</div>
</body>
</html>