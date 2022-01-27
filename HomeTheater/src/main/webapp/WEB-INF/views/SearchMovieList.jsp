<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>영화 목록</h2>
<div class="container">
<c:set var="num" value="${pg.total-pg.start+1}"></c:set>

<table>
	<tr><th>제목</th><th>감독</th><th>주연배우</th><th>장르</th><th>연령등급</th><th>런타임</th><th>개봉날짜</th>
	<c:forEach var="Movie" items="${SearchMovieList }"> 
		<tr><td>${movie.mo_title}</td><td>${movie.mo_director}</td><td>${movie.mo_actor}</td>
		<td>${movie.mo_genre}</td><td>${movie.mo_age}</td><td>${movie.mo_playTime}</td><td>${movie.mo_openDate}</td>
		<c:set var="num" value="${num - 1 }"></c:set>
	</c:forEach>
</table>

<c:if test="${pg.startPage > pg.pageBlock }">
	<a href="list?currentPage=${pg.startPage-pg.pageBlock}">[이전]</a>
</c:if>
	
<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage}" >
	<a href="list?currentPage=${i}">[${i}]</a>
</c:forEach>

<c:if test="${pg.endPage > pg.totalPage }">
	<a href="list?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
</c:if>
</div>
</body>
</html>