<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link rel="stylesheet" href="css/CH_css/CH_ReservationList.css">
<title>예약관리</title>
</head>
<body>
<div class="container">
 <div class="content">
 	<%@ include file="../header.jsp" %>
 	<div class="subject">
 		<b id="subject">예약관리</b>
 	</div>
 	<table border="1">
		<tr>
			<th>번호</th>
			<th>예약아이디</th>
			<th>영화번호</th>
			<th>예약번호</th>
			<th>좌석번호</th>
			<th>예매날짜</th>
			<th>예매시간</th>
			<th>예매취소</th>
		</tr>
		<c:forEach var="reservation" items="${reservationList}" varStatus="status">
		<tr><td>${status.index+1}</td>
			<td>${reservation.m_id}</td>
			<td>${reservation.mo_number}</td>
			<td>${reservation.re_number}</td>
			<td>${reservation.se_number}</td>
			<td>${reservation.se_date}</td>
			<td>${reservation.se_time}</td>
			<td><input class="button" type="button" value="예매취소" 
			onclick="cancel('${reservation.re_number}','${reservation.se_date}','${reservation.se_number }','${reservation.se_time }','${reservation.mo_number}')" style="font-weight: bold;"></td>
		</tr>
		</c:forEach>
	</table>
 	<%@ include file="../footer.jsp"%>
 </div>
</div>
<script type="text/javascript" src="js/cancel.js"></script>
</body>
</html>