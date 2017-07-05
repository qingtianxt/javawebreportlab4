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
				document.getElementById("numinfo").innerHTML="<font color='red'>课程号不能为空</font>";
				return false;
			}
		else{
			document.getElementById("numinfo").innerHTML="";
		}
		var namevalue=document.getElementById("name").value;
		if(namevalue==""||namevalue==null)
		{
			document.getElementById("nameinfo").innerHTML="<font color='red'>课程名不能为空</font>";
			return false;
		}
		else
			{
				document.getElementById("nameinfo").innerHTML="";
			}
		var sexvalue=document.getElementById("sex").value;
		if(sexvalue==""||sexvalue==null)
		{
			document.getElementById("sexinfo").innerHTML="<font color='red'>学分不能为空</font>";
			return false;
		}
		else
			{
				document.getElementById("sexinfo").innerHTML="";
			}
		
		return true;
	}
</script>
<body>
	<h1 align="center">在此页面进行添加操作</h1>
	<hr>
	<form action="addServlet" method="post" align="center" onsubmit="return check()">
		<table align="center">
			<tr>
				<td>
					课程号：
				</td>
				<td>
					<input type="text" name="num" id="num" onblur="losefocus1(this.value)">
				</td>
				<td>
					<span id="numinfo"></span>
				</td>
			</tr>
			<tr>
				<td>
					课程名：
				</td>
				<td>
					<input type="text" name="name" id="name">
				</td>
				<td>
					<span id="nameinfo"></span>
				</td>
			</tr>
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
					<input type="submit" value="确认创建">
				</td>
				<td>
					<input type="reset" value="重新设置">
				</td>
			</tr>
		</table>
	
	</form>
</body>
</html>