<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>회원가입</title>
<style>
#header{
	text-align: left;
	font-size: 25px;
}
.loginForm{
	text-align: center;	
}
label{
	float: left;
}

</style>
</head>
<%
	String context = request.getContextPath();
%>
<body>
<div class="container">
 <div class="content">
  <%@ include file="../header.jsp" %>
  	<b id="header">회원가입</b>
  	<div class="loginForm">
	 	<form action="<%=context%>/joinMember/save" method="post">
	 		<br>
	 		<div class="form-grou row">
		 		<label class="col-sm-2">아이디:</label>
		 		<div class="col-sm-3">
			 		<input type="text" name="m_id" placeholder="ID"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">비밀번호:</label>
		 		<div class="col-sm-3">
			 		<input type="password" name="m_password" placeholder="PW"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">비밀번호 확인:</label>
		 		<div class="col-sm-3">
			 		<input type="password" name="m_passwordConfirm" placeholder="PW-Confirm"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">이름:</label>
		 		<div class="col-sm-3">
			 		<input type="text" name="m_name" placeholder="NAME"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">전화번호:</label>
		 		<div class="col-sm-3">
					<input type="text" name="m_phonenumber" placeholder="PHONENUMBER"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">주소:</label>
		 		<div class="col-sm-3">
					<input type="text" name="m_address" placeholder="ADDRESS"> <br>
		 		</div>
	 		</div>
	 		
	 		<div class="form-grou row">
		 		<label class="col-sm-2">이메일:</label>
		 		<div class="col-sm-3">
					<input type="text" name="m_email" placeholder="EMAIL"> <br>
		 		</div>
	 		</div>
	 		
	 		<input type="hidden" name="m_delchk" value="F">
	 		<input type="submit" value="회원가입">
	 		<input type="button" value="취소" >
	 	</form>
 	</div>
  <%@ include file="../footer.jsp"%>	
 </div>
</div>
</body>
</html>