<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1>공인중개사 정보 </h1>
		<table class="table">
			<tr>
				<th>ID</th>
				<td>${realtor.id}</td>
			</tr>
			<tr>
				<th>상호명 </th>
				<td>${realtor.office }</td>
			</tr>
			<tr>
				<th>주소 </th>
				<td>${realtor.address }</td>
			</tr>
		
		</table>
		
		
	</div>

</body>
</html>