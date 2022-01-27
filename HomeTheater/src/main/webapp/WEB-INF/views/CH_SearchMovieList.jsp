<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>SearchMovieList</title>
<style>
table{
	margin-left:auto; 
    margin-right:auto;
    border-spacing: 10px;
 	border-collapse: separate;
}
th{
	font-size: 20px;
}
td{
	font-size: 15px;
	width: 100px;
	
}
</style>
</head>
<body>
<div class="container">
 <div class="content">
 	<%@ include file="header.jsp" %>
		<c:if test="${fn:length(SearchMovieList)==0}">
			<h2>검색에 맞는 결과값이 없습니다.</h2>
		</c:if>
		<c:if test="${fn:length(SearchMovieList)!=0 }">
		<table>
			<tr>
				<th>포스터</th><th>영화제목</th><th>감독</th><th>배우</th>
				<th>장르</th><th>연령등급</th><th>런타임</th><th>개봉날짜</th>
			<tr>
			
			<c:forEach var="movie" items="${SearchMovieList }">
			<tr>
				<td><img src="${movie.mo_fileName}" style="width: 150px; height: 200px;" ></td>
				<td>${movie.mo_title}</td><td>${movie.mo_director}</td>
				<td>${movie.mo_actor}</td><td>${movie.mo_genre}</td><td>${movie.mo_age}</td>
				<td>${movie.mo_playTime}시간</td><td>${movie.mo_openDate}</td>
			</tr>
			</c:forEach>
		</table>
		</c:if>
	<%@ include file="footer.jsp"%>
 </div>
</div>
</body>
</html>