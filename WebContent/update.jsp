<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	function check() {
		var numvalue=document.getElementById("num").value;
		if(numvalue==""||numvalue==null)
			{
				document.getElementById("numinfo").innerHTML="<font color='red'>学号不能为空</font>";
				return false;
			}
		else{
			document.getElementById("numinfo").innerHTML="";
		}
		var namevalue=document.getElementById("name").value;
		if(namevalue==""||namevalue==null)
		{
			document.getElementById("nameinfo").innerHTML="<font color='red'>姓名不能为空</font>";
			return false;
		}
		else
			{
				document.getElementById("nameinfo").innerHTML="";
			}
		var scorevalue=document.getElementById("score").value;
		if(scorevalue==""||scorevalue==null)
		{
			document.getElementById("scoreinfo").innerHTML="<font color='red'>性别不能为空</font>";
			return false;
		}
		else
			{
				document.getElementById("scoreinfo").innerHTML="";
			}
		return true;
	}
</script>
<body>
	<h1 align="center">在此页面进行修改</h1>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<h2 align="center">请输入要修改的人信息</h2>
	<form action="updateServlet" method="post" onsubmit="return check()">
		<table align="center">
			<tr>
				<td>
					学号：
				</td>
				<td>
					<input type="text" name="num" id="num">
				</td>
				<td>
					<span id="numinfo"></span>
				</td>
			</tr>
			<tr>
				<td>
					姓名：
				</td>
				<td>
					<input type="text" name="name" id="name"> 
				</td>
				<td>
					<span id="nameinfo"></span>
				</td>
			<tr>
				<td>
					学分：
				</td>
				<td>
					<input type="text" name="score" id="score">
				</td>
				<td>
					<span id="scoreinfo"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="确认提交">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>