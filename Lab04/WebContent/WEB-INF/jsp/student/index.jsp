<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="../js/jquery-1.12.4.min.js"></script>
<script src="../js/judge.js"></script>
</head>
<body>
	<h1>学生信息管理系统</h1>
	<a href="${pageContext.request.contextPath }/student/add.action">添加学生信息</a>
	<br />
	<br />
	<table border="1" style="width: 50%;">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生年月</th>
			<th>住址</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${studentList}" var="item">
			<tr>
				<td>${item.stunumber }</td>
				<td>${item.name }</td>
				<td>${item.sex }</td>
				<td>${item.birthday }</td>
				<td>${item.address }</td>
				<td><a
					href="${pageContext.request.contextPath }/student/getStudent.action?id=${item.id}">修改</a>
					<a
					href="${pageContext.request.contextPath }/student/deleteStudent.action?id=${item.id}">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<hr />
	<div
		style="text-align: center; width: 100%; font-size: 15px; color: #333;"
		id="time"></div>
</body>
</html>