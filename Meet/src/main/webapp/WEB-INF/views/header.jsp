<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>${sessionScope.user}님 환영합니다</h1>
	<div>
		<a href="/profile?user_id=${sessionScope.user}">수정</a>
	</div>
	<div>
		<a href="/logout">로그아웃</a>
	</div>
</body>
</html>