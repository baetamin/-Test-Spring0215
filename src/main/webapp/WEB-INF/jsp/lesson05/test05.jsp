<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
	<h1>회원정보리스트</h1>
		<table class="table text-center">
			<thead>
				<tr>	
					<th>No</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>국적</th>
					<th>이메일</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<c:forEach var="member" items="${members }" varStatus="status">
			<tbody>
				<tr>
					<td>${status.count }</td>
					<td>${member.name }</td>
					<c:choose>
						<c:when test="${fn:startsWith(member.phoneNumber,'010') }">
							<td>${member.phoneNumber }</td>
						</c:when>
						<c:otherwise>
							<td>유효하지 않는 번호입니다.</td>
						</c:otherwise>
					</c:choose>
					
					<td>${fn:replace(member.nationality, "삼국시대","삼국-") }</td>
					<td><b>${fn:split(member.email,"@") [0]}</b>@${fn:split(member.email,"@") [1]}</td>
					<td>
						${fn:substring(member.introduce, 0,15) }
						<c:if test="${fn:length(member.introduce) > 15 }">
							...
						</c:if>
					</td>
					
				</tr>
			
			</tbody>
			</c:forEach>
		</table>
	</div>

 
 
 
 
 
 

</body>
</html>