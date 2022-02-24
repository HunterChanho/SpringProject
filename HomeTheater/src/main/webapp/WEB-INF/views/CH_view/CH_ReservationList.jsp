<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link rel="stylesheet" href="css/CH_css/CH_ReservationList.css">
<title>예약관리</title>
<style>
.inputValue{
	width: 140px;
	border: 1px solid white;
	text-align: center;
}
.inputValue_id{
	width: 140px;
	border: 1px solid white;
	text-align: center;
	background-color: #EAEAEA;
}
</style>
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
			<th>수정</th>
			<th>예매취소</th>
		</tr>
		<c:forEach var="reservation" items="${reservationList}" varStatus="status">
		<tr><td><input class="index" value="${status.index+1}" readonly></td>
			<td><input class="inputValue_id" type="text" id="m_id${status.index}" value="${reservation.m_id}" readonly></td>
			<td><input class="inputValue" type="text" id="mo_number${status.index}" value="${reservation.mo_number}"></td>
			<td><input class="inputValue" type="text" id="re_number${status.index}" value="${reservation.re_number}"></td>
			<td><input class="inputValue" type="text" id="se_number${status.index}" value="${reservation.se_number}"></td>
			<td><input class="inputValue_seDate" type="text" id="se_date${status.index}" value="${reservation.se_date}"></td>
			<td><input class="inputValue" type="text" id="se_time${status.index}" value="${reservation.se_time}"></td>
			<td><input class="button" type="button" value="수정" onclick="updateReservation(${status.index})"></td>
			<td><input class="button" type="button" value="예매취소" 
			onclick="cancel('${reservation.re_number}','${reservation.se_date}','${reservation.se_number }','${reservation.se_time }','${reservation.mo_number}')" style="font-weight: bold;"></td>
		</tr>
		</c:forEach>
	</table>
 	<%@ include file="../footer.jsp"%>
 </div>
</div>
<script type="text/javascript" src="js/reservation/cancel.js"></script>
<script type="text/javascript" src="js/CH_js/CH_ReservationList.js"></script>
</body>
</html>