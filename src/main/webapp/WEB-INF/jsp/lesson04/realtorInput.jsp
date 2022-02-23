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

	<h1>공인 중개사 추가 </h1>
		<form method="get" action="/lesson04/test02/add_realtor">
			<label>상호명  </label><input type ="text" name="office"><br>
			<label>전화번호 </label><input type ="text" name="phoneNumber"><br>
			<label>주소  </label><input type ="text" name="address"><br>
			<label>등급 </label><input type ="text" name="grade"><br>
			<button type="submit"> 추가 </button>
		</form>	
</body>
</html>