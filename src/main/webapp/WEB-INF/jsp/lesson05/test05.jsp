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

 <link rel="stylesheet" href="/lesson06/test03/css/style.css" type="text/css">
    </head>

    <body>
        <div id="wrap" >
            <div class="text-center display-4">통나무 팬션</div>
            <header class="mt-4">
                
                <nav class="mt-4">
                    <ul class="nav nav-fill">
                        <li class="nav-item"><a class="nav-link" href="#">팬션소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">객실보기</a></li>
                        <li class="nav-item"><a class="nav-link" href="/lesson06/booking_input">예약하기</a></li>
                        <li class="nav-item"><a class="nav-link" href="/lesson06/booking_list">예약목록</a></li>
                    </ul>
                </nav>
            </header>
            <section>
                <table class="table text-center">
                    <h2 class="my-4 text-center">예약 목록 보기</h2>
                    <thead>
                        <tr>
                            <th>이름</th>
                            <th>예약날짜</th>
                            <th>숙박일수</th>
                            <th>숙박인원</th>
                            <th>전화번호</th>
                            <th>예약상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="booking" items="${bookingList }" >
                        <tr>
                        	<td>${booking.name }</td>
                        	<td><fmt:formatDate value="${booking.date }" pattern="yyyy년 M월 d일" /> </td>
                        	<td>${booking.day }</td>
                        	<td>${booking.headcount }</td>
                        	<td>${booking.phoneNumber }</td>
                        	
                        	<c:choose>
                        		<c:when test="${booking.state == '확정' }" >
                        			<td class="text-success">${booking.state }</td>
                        		</c:when>
                        		<c:when test="${booking.state == '대기중' }">
									<td class="text-info">${booking.state }</td>                        			
                        		</c:when>
                        		<c:when test="${booking.state == '취소' }">
                        			<td class="text-danger" >${booking.state }</td>
                        		</c:when>
                        		<c:otherwise>
                        			<td>${booking.state }</td>
                        		</c:otherwise>
                        			
                        	</c:choose>
                        	
                        	
                        </tr>
                        
                        </c:forEach>
               
                    </tbody>

                </table>

            </section>
            

            <footer class="mt-3 ml-4">
                <address>
                    제주특별자치도 제주시 애월읍  <br>
                    사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
                    Copyright 2025 tongnamu All right reserved
                </address>

            </footer>


        </div>

    <script>
        $(document).ready(function() {
        	
		
          
        } );
    </script>
    </body>
</html>

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