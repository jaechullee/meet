<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>고객 등록</h1>
	<div>
		<form method="post" action="add">
			<div>
				<label>유저아이디 :</label>
				<input type="text" name="user_id">
			</div>
			<div>
				<label>유저 비밀번호:</label>
				<input type="text" name="user_password">
			</div>
			<div>
				<label>유저 이름:</label>
				<input type="text" name="user_name">
			</div>
			<div>
				<label>주소:</label>
				<input type="text" name="user_address">
			</div>
			<div>
				<label>폰번호:</label>
				<input type="text" name="user_phone">
			</div>
			
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>