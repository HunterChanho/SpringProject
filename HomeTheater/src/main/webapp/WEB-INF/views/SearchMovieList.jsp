<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>SearchMovieList</title>
<style>

</style>
</head>
<body>
<div class="container">
	<table>
		<tr>
			<th>이미지</th><th>영화제목</th><th>감독</th><th>배우</th>
			<th>장르</th><th>연령등급</th><th>런타임</th><th>개봉날짜</th>
		<tr>
		<c:forEach var="movie" items="${SearchMovieList }">
		<tr>
			<td>${movie.mo_number}</td><td>${movie.mo_title}</td><td>${movie.mo_director}</td>
			<td>${movie.mo_actor}</td><td>${movie.mo_genre}</td><td>${movie.mo_age}</td>
			<td>${movie.mo_playTime}시간</td><td>${movie.mo_openDate}</td>
		</tr>
		</c:forEach>
	</table>
	<%@ include file="footer.jsp"%>
</div>
</body>
</html>