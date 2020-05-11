<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>profile</h1>
	<div>
		<form method="POST" action="profile">
			<div>
				<label>아이디:</label>
				<input type="text" name="user_id" value="${item.user_id}" readonly>
			</div>
			<div>
				<label>비밀번호:</label>
				<input type="text" name="user_password" value="${item.user_password}">
			</div>
			<div>
				<label>이름:</label>
				<input type="text" name="user_name" value="${item.user_name}">
			</div>
			<div>
				<label>주소:</label>
				<input type="text" name="user_address" value="${item.user_address}">
			</div>
			<div>
				<label>전화번호</label>
				<input type="text" name="user_phone" value="${item.user_phone}">
			</div>
			
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>