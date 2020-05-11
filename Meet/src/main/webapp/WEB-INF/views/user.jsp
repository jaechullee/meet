<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자</title>
</head>
<body>
	<h1>사용자(${sessionScope.user})</h1>
	<div>
		<a href="/profile?user_id=${sessionScope.user}">수정</a>
	</div>
	<div>
		<a href="/logout">로그아웃</a>
	</div>
	<div>
		<a href="/project/list">프로젝트</a>
	</div>
	<div>
		<a href="add">프로젝트 개설</a>
	</div>
</body>
</html>