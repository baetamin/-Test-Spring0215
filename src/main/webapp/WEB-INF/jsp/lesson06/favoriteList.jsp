<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>

	<h1>즐겨찾기 목록</h1>
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>NO.</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="favorite" items="${favoriteList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${favorite.name }</td>
					<td>${favorite.url }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>