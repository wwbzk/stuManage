<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改个人信息</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="../js/jquery-1.12.4.min.js"></script>
<script src="../js/judge.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath }/student/modifyStudent.action" method="post">
		<h2>修改个人信息</h2>
		<table border="1" style="width:50%">
			<tr>
				<th>学号</th>
				<th><input type="text" name="stunumber" value="${student.stunumber }"></th>
			</tr>
			<tr>
				<th>姓名</th>
				<th><input type="text" name="name" value="${student.name }"></th>
			</tr>
			<tr>
				<th>性别</th>
				<th><input type="text" name="sex" value="${student.sex }"></th>
			</tr>
			<tr>
				<th>出生年月</th>
				<th><input type="text" name="birthday" value="${student.birthday }"></th>
			</tr>
			<tr>
				<th>住址</th>
				<th><input type="text" name="address" value="${student.address }"></th>
			</tr>
			<tr>
				<th colspan="2"><input type="hidden" name="id" value="${student.id }"><input type="submit" id="bt" value="修改">&nbsp;&nbsp;<input type="reset" value="重置"></th>
			</tr>
		</table>
</form>
</body>
</html>