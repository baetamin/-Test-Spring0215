<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>membership</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container ">
		<h1>멤버십</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>이름</th>
					<th>전화번호</th>
					<th>등급</th>
					<th>포인트</th>
				</tr>
			</thead>
			
		<c:forEach var="members" items="{user }">
			<tbody>
				<tr>
					<td>${members.name}</td>
					<td>${members.phoneNumber}</td>
				<c:choose>
					<c:when test="${members.grade =='VIP'}">
					  <td class="text-danger">${members.grade }</td>
					</c:when>
					<c:when test="${members.grade eq 'GOLD'}">
					  <td class="text-warning">${members.grade }</td>
					</c:when>
					<c:otherwise>
					  <td>${members.grade }</td>
					</c:otherwise>
				</c:choose>
						
				<c:choose>
					<c:when test="${members.point >= 5000 }">
						<td class="text-info">${members.point}P</td>							
					</c:when>
					<c:otherwise>
						<td >${members.point}P</td>
					</c:otherwise>
						</c:choose>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	
	</div>

</body>
</html>