<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>로그인</h1>
	<div>
		<form method="post" action="/login">
		<div>	
			<label>이메일:</label>
			<input type="text" name="user_id">
		</div>
		<div>
			<label>비밀번호:</label>
			<input type="password" name="user_password">
		</div>
		<div>
			<input type="submit" value="로그인">
		</div>
		</form>
	</div>
</body>
</html>