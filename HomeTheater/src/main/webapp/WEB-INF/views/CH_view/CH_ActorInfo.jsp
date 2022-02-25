<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>영화배우 정보</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
.logo {
	text-align: left;
	margin-bottom: 20px;
	border-bottom: 1px solid black;
}
.container{
	text-align: center;
	width: 1000px;
}
.main_title{
	font-size: 25px;
	margin-bottom: 30px;
}
table{
	width: 510px;
}
.btn{
	border-color: black;
	background: white;
	color: black;
}
.btn:hover{
	background: black;
	color: white;
}
</style>
</head>
<body>
<!-- 외장 톰켓 고유주소 -->
<%
	String context = request.getContextPath();
%>
<div class="logo">
	<img src="<%=context%>/img/logo1.png" style="width: 250px; height: 100px;">
</div>
<div class="container">
	<div class="content">
		<h1>______</h1>
		<h2 class="main_title">영화배우 정보</h2>
		
		<c:forEach var="actor" items="${actorList }">
			<table border="1">
				<tr>
					<th>번호</th>
					<th>사진</th>
					<th>이름</th>
					<th>생년월일</th>
				</tr>
				<tr>
					<td>${actor.ac_number}</td>
					<td><img src="${actor.ac_file}"></td>
					<td>${actor.ac_name}</td>
					<td>${actor.ac_birthday}</td>
				</tr>
			</table>
		</c:forEach>
		<br><br>
		<input type="button" class="btn" value="닫기" onclick="window.close()"> 
		<br><br>
	</div>
</div>
</body>
</html>