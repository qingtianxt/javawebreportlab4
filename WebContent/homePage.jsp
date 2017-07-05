<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">欢迎使用</h1>
	<hr><br><br><br>
	<%
		String jud=(String)session.getAttribute("jud");
		if(jud!=null&&jud!="")
		{
			out.print("<p align='center'>"+jud+"</p>");
		}
	%>
</body>
</html>