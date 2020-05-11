<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>
	<h1>project list</h1>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>입장</th>
					<th>프로젝트 명</th>
					<th>개설자</th>
					<!--  <th>키</th> -->
					<th>수정/삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${list.size() > 0}">
						<c:forEach items="${list}" var="item">
							<tr>
								<td><a href="read?project_id=${item.project_id}">들어가기</a></td>
								<td>${item.project_name}</td>
								<td>${item.user_id}</td>
								<!-- <td>${item.project_key}</td> -->
								<td><a href="update?project_id=${item.project_id}">수정</a><a href="delete?project_id=${item.project_id}">삭제</a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">만들어진 프로젝트가 없습니다</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	
	<div>
		<a href="/project/add">프로젝트 개설</a>
	</div>
</body>
</html>