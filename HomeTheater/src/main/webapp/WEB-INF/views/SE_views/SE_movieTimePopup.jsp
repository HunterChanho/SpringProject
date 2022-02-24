<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상영시간 팝업</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<body>
<h2 class="main_title">영화 상영시간</h2>
<c:forEach var ="seatandTime" items="${seatandTimeList }">
<button></button>
</c:forEach>
</body>
</html>