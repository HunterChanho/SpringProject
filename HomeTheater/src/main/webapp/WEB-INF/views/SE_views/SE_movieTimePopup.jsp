<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상영시간 팝업</title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}
.logo {
	text-align: left;
	margin-bottom: 20px;
	border-bottom: 1px solid black;
}
.container {
	text-align: center;
	width: 1000px;
}
</style>
</head>
<body>
	<!-- 외장 톰켓 고유주소 -->
	<%
		String context = request.getContextPath();
	%>
	<div class="logo">
		<img src="<%=context%>/img/logo1.png" style="" width="250px"
			height="100"> </a>
	</div>


	<div class="container">
		<div class="content">
			<h1>______</h1>
			<h2 class="main_title">영화 상영시간</h2>

			<c:choose>
				<c:when test="${empty seatandTimeList }">
					상영 정보가 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="dateAndTime" items="${seatandTimeList}">
 						${dateAndTime.se_date}일|${dateAndTime.se_time}시<br>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
						<c:choose>
				<c:when test="${empty findDate }">
					상영 정보가 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="date" items="${findDate}">
						<button class= "date_btn">${date.se_date}</button>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
			
		</div>
	</div>
</body>
<script>
$(".date_btn").on("click", function () {
			var se_date = "${date.se_date}";
	
		   	 	 $.ajax({
		  	     	     type : "POST",  
		      	 	     url : "/movieTimePopup",       
		      	 	     data : {'se_date':se_date},
	          	 	     error:function(request, status, error){
		      	  			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       	 	},
		            success : function(data) {
		            	
		                    if(data == 0){
		                    	alert("관심영화로 등록하셨습니다.");
		                    	location.reload();
		                    	
		                    }
		                  	  else if (data == 1){
		                   	  alert("관심영화 등록을 취소하셨습니다.");
		                    	location.reload();
		                }
		            }
		        }); 
})
</script>


</html>