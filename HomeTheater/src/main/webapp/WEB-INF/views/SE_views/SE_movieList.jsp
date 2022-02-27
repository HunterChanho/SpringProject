<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/movieAdmin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록</title>
<style>
.list_image{
	border: 1px solid black;
	width: 200px;
	height: 250px;
}
</style>
</head>

<script type="text/javascript">
</script>
<body>
	<div class="container">
		<%@ include file="../header.jsp"%>
		<h1>______</h1>
		<h2 class="main_title">영화</h2>
		<br>
		<%-- <c:if test="${sessionScope.sessionId == 'admin'}">
			<div class="admin_button">
				<button type="button" class="movie_button" id="movieAdd"
					href=location.href='adminMovieAddForm'>
					영화 등록</a>
				</button>
			</div>
		</c:if> --%>

		<ul>
			<c:forEach var="movie" items="${listMovie }">
				<li><img class="list_image" src="/${movie.mo_fileName }" alt="">
					<br> <a href="movieDetail?mo_number=${movie.mo_number }">
						영화정보 </a>|<a href="#" class = "movieTime-Btn" onclick="movieTimePopup(${movie.mo_number})"> 상영시간 </a>|<a
					href="/reservation?mo_number=${movie.mo_number }"> 예매하기 </a></li>
			</c:forEach>
		</ul>


		<%-- <table>
			<tr>
				<th>영화 번호</th>
				<th>제목</th>
				<th>감독</th>
				<th>장르</th>
			</tr>
			<c:forEach var="movie" items="${listMovie }">
				<tr>
					<td>${movie.mo_number }</td>
					<td>${movie.mo_title }</td>
					<td>${movie.mo_director }</td>
					<td>${movie.mo_genre }</td>
					<td><a href="movieDetail?mo_number=${movie.mo_number}"><img
							class="list_image" src="/${movie.mo_filename }" width="175"
							height="250"></a></td>
				</tr>
			</c:forEach>
		</table> --%>
		<br> <br> <br>
		<%@ include file="../footer.jsp"%>
	</div>
</body>

<%-- 영화 상영시간 팝업 --%>
<script>
function movieTimePopup(mo_number){
	var url = "movieTimePopup?mo_number="+mo_number;
	var name="movieTimePopup";
	var option="width=600, height=600, left=100,top=50";
	
	window.open(url,name,option);
	
}
	
</script>

</html>