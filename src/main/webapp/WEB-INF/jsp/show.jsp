<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>展示信息</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<table>
		<tr>
			<td>用户编号</td>
			<td>用户姓名</td>
			<td>用户生日</td>
			<td>用户年龄</td>
		</tr>
		<c:forEach var="row" items="${date}">
			<tr>
				<td>${row.id }</td>
				<td>${row.name }</td>
				<td>${row.brithday }</td>
				<td>${row.age }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>