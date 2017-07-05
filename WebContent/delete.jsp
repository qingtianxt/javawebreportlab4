<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function loseFocus(){
		var numvalue=document.getElementById("num").value;
		
		if(numvalue==""||numvalue==null)
			{
				document.getElementById("numinfo").innerHTML="学号不能为空";
			}
		else
			{
				document.getElementById("numinfo").innerHTML="";
			}
	}
	function checkForm(){
var numvalue=document.getElementById("num").value;
		
		if(numvalue==""||numvalue==null)
			{
				document.getElementById("numinfo").innerHTML="<font color='red'>课程号不能为空</font>";
				return false;
			}
		else
			{
				document.getElementById("numinfo").innerHTML="";
			}
		return true;
	}
</script>
<body>
	<h1 align="center">在此页面实现删除</h1>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<br>
	<form action="deleteServlet" method="post" onsubmit="return checkForm()">
		<table align="center">
			<tr>
				<td>请输入课程号</td>
				<td><input type="text" name="num" id="num"></td>
				<td><span id="numinfo"></span></td>
			</tr>
			<tr>
				<td><input type="submit" value="确认"></td>	
			</tr>
		</table>
	</form>
</body>
</html>