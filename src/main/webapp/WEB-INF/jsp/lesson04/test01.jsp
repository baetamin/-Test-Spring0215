<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>seller</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>


	<div class="container">
		<form  method="post" action="/lesson04/test01/add_seller">
			<div>
				<h1 class="">판매자 정보 </h1>
				<img width="200" height="200" src="${result.profileimageUrl} ">
				
				<div class="display-4 font weight lighter">${result.nickname }</div>
				<div class="text-info bold"><strong>${result.temperature }</strong></div>
			</div>
		</form>
	</div>
	
	
	
	
	
</body>
</html>