<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link rel="stylesheet" href="css/CH_css/CH_MyPage.css">
<title>마이페이지</title>
</head>
<body>
<div class="container">
 <div class="content">
 	<%@ include file="../header.jsp" %>
 	<div class="subject">
 		<b>마이페이지</b>
 	</div>
 	<a id="icon" href="modifyForm"><i class="fas fa-user-alt" style="font-size: 80px; margin-top: 50px;"></i></a>
 	<a id="icon" href="interestMovie"><i class="fas fa-calendar-alt" style="font-size: 80px; margin-top: 50px;"></i></a>
 	<a id="icon" href="reservationInfo"><i class="fas fa-star" style="font-size: 80px; margin-top: 50px;"></i></a><br><br>
 	<b id="explain1">회원정보변경</b><b id="explain2">관심영화</b><b id="explain3">예약정보</b>
 	<br><br><br><br><br><br>
 	<%@ include file="../footer.jsp"%>
 </div>
</div>
</body>
</html>