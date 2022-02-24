<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test04</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<h1>1.후보자 득표율</h1>
			<table class="table">
				<thead>
					<tr>
						<th>기호</th>
						<th>득표 수</th>
						<th>득표 율</th>
					</tr>
				</thead>
				<c:forEach var="candidate" items="${candidates }" varStatus="status">
					<tbody>
						<tr>
							<td>${status.count }</td>
							<td><fmt:formatNumber value="${candidate }" type="number"  groupingUsed="ture"/></td>
							<td><fmt:formatNumber value="${candidate / '1000000'}" type="percent" /></td>
						</tr>
					</tbody>
				</c:forEach>
			
			</table>
	</div>
	
	<div class="container">
		<h1>2.카드명세서</h1>
			<table class="table">
				<thead>
					<tr>
						<th>사용처</th>
						<th>가격</th>
						<th>사용날짜</th>
						<th>할부</th>
					</tr>
				</thead>
				<c:forEach var="billcard" items="${cardBill }" varStatus="status">
				<tbody>
					<tr>
						<td>${billcard.store}</td>
						<td><fmt:formatNumber value="${billcard.pay }" type="currency"/> </td>
						<td>
						<fmt:parseDate value="${billcard.date }" pattern="yyyy-MM-dd" var="date"/>
						<fmt:formatDate value="${date}" pattern="yyyy년 MM월 dd일"/>
							
						</td>
						<td>${billcard.installment }</td>
					</tr>
				</tbody>
				</c:forEach>
			</table>
	</div>


</body>
</html>