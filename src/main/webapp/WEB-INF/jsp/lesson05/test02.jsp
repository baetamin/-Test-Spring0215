<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>musicranking</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<h1>HOT 5</h1>
		<table class="table ">
			<tr>
				<th>순위</th>
				<th>제목</th>
			</tr>
			
			
			<c:forEach var="ranking" items="${musicRanking}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${ranking }</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>