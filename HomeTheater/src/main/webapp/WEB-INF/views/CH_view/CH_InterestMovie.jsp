<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>관심영화</title>
<style>
.subject{
	text-align: center;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>
</head>
<body>
<div class="container">
 <div class="content">
 	<%@ include file="../header.jsp" %>
	<div class="subject">
 		<b>관심영화</b>
 	</div>
 	<c:forEach var="choiceMovie" items="${findInterstMovie }">
 		
 		
 	</c:forEach>
	<%@ include file="../footer.jsp"%>
 </div>
</div>
</body>
</html>