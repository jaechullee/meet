<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>
</head>
<body>
	<h1>관리자(${sessionScope.user})</h1>
	<div>
		<a href="/logout">로그아웃</a>
	</div>
	<div>
		<ul>
			<li><a href="user/list">모든 고객관리</a></li>
			<li><a href="project/list">모든 프로젝트 관리</a>
		</ul>
		
	</div>
</body>
</html>