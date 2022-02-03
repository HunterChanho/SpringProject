<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>회원가입</title>
</head>
<%
	String context = request.getContextPath();
%>
<body>
<div class="container">
 <div class="content">
 	<form action="<%=context%>/joinMember">
 		<label>아이디: 	  <input type="text" name="m_id" placeholder="ID"></label>
 		<label>비밀번호: 	  <input type="password" name="m_password" placeholder="PW"></label>
 		<label>비밀번호 확인: <input type="password" name="m_passwordConfirm" placeholder="PW-Confirm"></label>
 		<label>이름:		  <input type="text" name="m_id" placeholder="ID"></label>
 		<label>전화번호: 	  <input type="text" name="m_id" placeholder="ID"></label>
 		<label>주소: 		  <input type="text" name="m_id" placeholder="ID"></label>
 		<label>E-mail: 	  <input type="text" name="m_id" placeholder="ID"></label>
 		
 	
 	</form>
 </div>
</div>
</body>
</html>