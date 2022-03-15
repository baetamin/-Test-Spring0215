<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨정보페이지</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<h1>1.날씨 정보 페이지 </h1>
	<h3>과거 날씨</h3>
		<table class="table">
			<thead>
				<tr>
					<td>날짜</td>
					<td>날씨</td>
					<td>기온</td>
					<td>강수량</td>
					<td>미세먼지</td>
					<td>풍속</td>
				</tr>
			</thead>
			<c:forEach  var ="weather" items= "${}" />
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	
</body>
</html>