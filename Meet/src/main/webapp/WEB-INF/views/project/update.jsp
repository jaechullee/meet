<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>project updatePage</h1>
	<div>
		<form method="POST" action="update">
			<div>
				<label>프로젝트 번호:</label>
				<input type="number" name="project_id" value="${item.project_id}" readonly>
			</div>	
			<div>
				<label>프로젝트 명:</label>
				<input type="text" name="project_name" value="${item.project_name}">
			</div>
			<div>
				<label>개설자:</label>
				<input type="text" name="user_id" value="${item.user_id}" readonly>
			</div>
			
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>