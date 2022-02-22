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
			<h3>판매자 추가  </h3>
			<form method="post" action="/lesson04/test01/add_seller">
				<label>닉네임  :</label><input type="text" class="form-control" name="nickname"><br>
				<label>프로필사진  :</label><input type="text" class="form-control" name="profileimageUrl"><br>
				<label>온도 :</label><input type="text" class="form-control" name="temperature"><br>
				<button type="submit" class="btn btn-info">추가 </button>
			</form>
</div>

</body>
</html>