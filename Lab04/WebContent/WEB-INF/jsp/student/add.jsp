<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加个人信息</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="../js/jquery-1.12.4.min.js"></script>
<script src="../js/judge.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath }/student/addStudent.action" method="post">
	<h2>添加个人信息</h2>
	<table border="1" style="width: 50%">
		<tr>
			<th width="30%">学号：</th>
			<td width="70%"><input name="stunumber" type="text"></td>
		</tr>
		<tr>
			<th>姓名：</th>
			<td><input name="name" type="text"></td>
		</tr>
		<tr>
			<th>性别：</th>
			<td><input name="sex" type="text"></td>
		</tr>
		<tr>
			<th>出生年月：</th>
			<td><input name="birthday" type="text"></td>
		</tr>
		<tr>
			<th>住址：</th>
			<td><input name="address" type="text"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" id="bt" value="添加" > <input type="reset" value="重置"></td>
		</tr>
	</table>
</form>
</body>
</html>