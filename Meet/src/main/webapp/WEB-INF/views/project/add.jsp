<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>project addPage</h1>
	<div>
		<form method="POST" action="add">
			<div style="display:none">
				<label>프로젝트 번호:</label>
				<input type="number" name="project_id" value="${item.project_id}" readonly>
			</div>
			<div>
				<label>프로젝트 명</label>
				<input type="text" name="project_name">
			</div>
			<div>
				<label>개설자:</label>
				<input type="text" name="user_id" value="${sessionScope.user}" readonly>
			</div>
			<%-- <div>
				<label>프로젝트 키:</label>
				<input type="text" name="project_key" value="${project_key}" readonly>
			</div> --%>
			
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>