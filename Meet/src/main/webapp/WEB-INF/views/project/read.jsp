<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>
	<h1>readPage</h1>
	<ul>
		<li>번호 : ${item.project_id}</li>
		<li>이름 : ${item.project_name}</li>
	</ul>
</body>
</html>