<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>유저아이디</th>
					<th>유저비밀번호</th>
					<th>유저이름</th>
					<th>유저주소</th>
					<th>유저휴대폰번호</th>
					<th>수정/삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${list.size() > 0}">
						<c:forEach var="item" items="${list}">
							<tr>
								<td>${item.user_id}</td>
								<td>${item.user_password}</td>
								<td>${item.user_name}</td>
								<td>${item.user_address}</td>
								<td>${item.user_phone}</td>
								<td><a href="update?user_id=${item.user_id}">수정</a><a href="delete?user_id=${item.user_id}">삭제</a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="6">값이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>		
			</tbody>
		</table>
	</div>
</body>
</html>