<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>상영 날짜 및 좌석 추가</title>
<style>
.movieSeatAndTimeForm {
	margin-left: 30%;
	text-align: left;
}
.seat-btn {
margin-left: 25%;
}
.movieSeatInfo{
	text-align: left;
	display: inline-block;
	width: 80px;
}
.seatAndTimeInfo-input {
	text-align: left;
	display: inline-block;
}
</style>

</head>
<body>
	<div class="container">
		<%@ include file="../header.jsp"%>
		<h1>______</h1>
		<h2 class="main_title">상영 날짜 및 좌석 추가</h2>
		<div class="movieSeatAndTimeForm">
			<form action="adminMovieUpdateSeatAndTime" name="movieUpdateSeatAndTime" method="post">
				<br> <input type="hidden" name="mo_number" id="mo_number"
					value=${mo_number }>
						<input type="hidden" name="se_identify" id="se_identify" value="F">

				<ul>
					<li><label class="movieSeatInfo">상영 날짜</label>
						<div class="seatAndTimeInfo-input">
							<input type="date" name="se_date" id="se_date"
								required="required">
						</div>
					</li>
					<br>
					<li><label class="movieSeatInfo">상영 시간</label>
						<div class="seatAndTimeInfo-input">
							<input type="text" name="se_time" id="se_time"
								required="required">
						</div></li>
					<br>
					<li><label class="movieSeatInfo">좌석</label>
						<div class="seatAndTimeInfo-input">
							<input type="text" name="se_number" id="se_number"
								required="required">
						</div></li>
					<br>
	
				</ul>
				<div class="seat-btn">
					<button type="submit" value="추가" id="movieUpdateSeatAndTime"
						onclick="success()">추가</button>
					<button type="button" id="movieUpdateSeatAndTimeCancle"
						onclick="history.back()">취소</button>
				</div>
			</form>
		</div>
		<%@include file="../footer.jsp"%>
	</div>
	
</body>

<script type="text/javascript">
	function success() {
		<c:choose>
		<c:when test="${msg eq 0 }">
		alert("등록 실패! 중복된 좌석 여부 확인");
		</c:when>
		<c:otherwise>
		alert("등록 되었습니다.");
		</c:otherwise>
		</c:choose>
	}
</script>
</html>