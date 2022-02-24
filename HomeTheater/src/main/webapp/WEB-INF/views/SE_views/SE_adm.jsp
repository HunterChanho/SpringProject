<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영 날짜 및 좌석 추가</title>
</head>
<body>
<div class="container">

		<%@ include file="../header.jsp"%>
		<h1>______</h1>
		<h2 class="main_title">영화 수정</h2>
		<br>
		<label>상영 날짜</label><input type="date" name="movie_date" required="required">
		<label>상영 시간</label><input type="text" name="movie_time" required="required">
		<label>좌석</label><input type="text" name="movie_seat" required="required">
		<button type="submit" value = "추가">추가</button>
		<button type="button" id="movieUpdateSeatAndTimeCancle"
						onclick="history.back()">취소</button>
	</div>
			<%@include file="../footer.jsp"%>
</body>
</html>