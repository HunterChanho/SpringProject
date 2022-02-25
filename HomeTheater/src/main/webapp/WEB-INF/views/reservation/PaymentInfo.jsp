<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function iamport(){
	var lastPayPrice = $("#nowamount").text();
	var m_id = $("#m_id").val();
    var se_identify = $("#se_identify").val();
    var se_time = $("#se_time").val();
    var se_date = $("#se_date").val();
    var se_number = $("#se_number").val();
    var mo_number = $("#mo_number").val();
    var pay_totalprice = $("#pay_totalprice").val();
    var m_point = $("#m_point").val();
	var pay_how = $("#pay_how").val();
	//가맹점 식별코드
	IMP.init('imp03662835');
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '영화티켓' , //결제창에서 보여질 이름
	    amount : lastPayPrice, //실제 결제되는 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : m_id,
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울 강남구 도곡동',
	    buyer_postcode : '123-456',
/* 	    m_redirect_url: 'Payment' */
	}, function(rsp) {
	    if (rsp.success ) {
	    	var msg = '결제가 완료되었습니다.';
	    	$.ajax({
	        	url: "Payment",
	        	type: "POST",
	        	data: {
	        		"m_id": m_id,
	        		"se_identify": se_identify,
	        		"se_time": se_time,
	        		"se_date": se_date,
	        		"se_number": se_number,
	        		"mo_number": mo_number,
	        		"pay_totalprice": pay_totalprice,
	        		"m_point": m_point,
	        		"pay_how": pay_how
	        	},
	        	success: function(){
	        		location.href="main";
	        	}
	        })
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}
</script>
<title>결제</title>
<style>
.stepBar{
	font-size: 25px;
	text-align: left;
	display: flex;
	background-color: #353535;
	color: white;
	margin-top: 10px;
	margin-bottom: 1px;
}
summary{
	font-size: 18px;
	text-align: left;
	background-color: #BDBDBD;
	color: black;
}
.finalPayment{
	background-color: #BDBDBD;
}
#finalPayment{
	font-size: 15px;
}
.pay{
	display: inline-block;
	width: 700px;
}
.totalPrice{
	display: inline-block;
	width: 200px;
}
.menuBar{
	border: 2px solid black;
	width: 200px;
	height: 50px;
	margin-bottom: 10px;
	font-size: 15px;
}
td{
	border: 1px solid black;
}
</style>
</head>
<body>
<div class="container">
 <div class="content">
  <%@ include file="../header.jsp" %>

  <div class="pay">
	  
	  <br><br><br>
	  	<div><b class="stepBar">STEP 1.</b></div>
	  	<details>
	  		<summary>할인쿠폰</summary>
	  		<div class="finalPayment">
	  			<h4>쿠폰번호를 입력하세요.</h4>
	  			<input type="text" id="coupon" placeholder="xxxx-xxxx-xxxx"><br>
				<input type="button" value="사용하기" onclick="coupon()">
	  		</div>
	  	</details>
	  	<b class="stepBar">STEP 2.</b>
	  	<details>
	  		<summary>포인트 사용</summary>
	  		<div class="finalPayment">
	  			<h4>보유 포인트</h4>
	  			<input type="text" id="userpoint" value="${memberInfo.m_point}" readonly>&emsp;원
	  			<!--  <input type="button" value="조회" onclick="location.href='Payment';">-->
	  			<h4>사용할 포인트</h4>
	  			<input type="text" id="usepoint">&emsp;원<br>
				<input type="button" value="사용하기" onclick="usepoint()">
	  		</div>

	  	</details>
		  <input type="hidden" name="m_id" id="m_id" value="${memberInfo.m_id}">
		  <input type="hidden" name="se_identify" id="se_identify" value="${seatandTime.se_identify}">
		  <input type="hidden" name="se_time" id="se_time" value="${seatandTime.se_time}">
		  <input type="hidden" name="se_date" id="se_date" value="${seatandTime.se_date}">
		  <input type="hidden" name="se_number" id="se_number" value="${seatandTime.se_number}">
		  <input type="hidden" name="mo_number" id="mo_number" value="${seatandTime.mo_number}">
		  <input type="hidden" id="pay_totalprice" id="pay_totalprice" name="pay_totalprice" value="13000">
		  <input type="hidden" id="m_point"       id="m_point"  name="m_point" value="${memberInfo.m_point}">
	  	<b class="stepBar">STEP 3.</b>
	  	<details>
	  		<summary>최종결제수단</summary>
	  		<div class="finalPayment">
		  		<label id="finalPayment"><input type="radio" name="pay_how" id="pay_how" value="카카오페이" checked onclick="payhow()">카카오페이</label>&emsp;&emsp;
		  		<!-- <label id="finalPayment"><input type="radio" name="pay_how" value="휴대폰결제" onclick="payhow()">휴대폰 결제</label>&emsp;&emsp;
		  		<label id="finalPayment"><input type="radio" name="pay_how" value="계좌이체" onclick="payhow()">계좌이체</label>&emsp;&emsp;
		  		<label id="finalPayment"><input type="radio" name="pay_how" value="간편결제" onclick="payhow()">간편결제</label>&emsp;&emsp;
		  		<label id="finalPayment"><input type="radio" name="pay_how" value="내통장결제" onclick="payhow()">내통장결제</label>&emsp;&emsp;
		  		<label id="finalPayment"><input type="radio" name="pay_how" value="토스" onclick="payhow()">토스</label>&emsp;&emsp; -->
	  		</div>
	  	</details>
	  	</div>
	  	
	  	<div class="totalPrice">
	  		<table class="menuBar">
	  			<thead>
	  			<tr>
		   			<td>결제하실 금액</td>
	   			</tr>
	   			</thead>
	   			<tbody>
	   			<tr>
	   				<td id="nowamount">13000</td>
	   			</tr>
	   			</tbody>
	  		</table>
	  		<table class="menuBar">
	  			<tr>
		   			<td id="sub">할인내역</td>
	   			</tr>
	   			<tr>
	   				<td>총 할인금액</td>
	   			</tr>
	   			<tr>
	   				<td id="dicountamount">0</td>
	   			</tr>
	  		</table>
	  		<%--<table class="menuBar">
	  			<tr>
		   			<td>결제내역</td>
	   			</tr>
	   			<tr>
	   				<td>($결제수단 $결제금액)</td>
	   			</tr>
	   			<tr>
	   				<td>남은 결제금액</td>
	   			</tr>
	   			<tr>
	   				<td>($남은 결제금액)</td>
	   			</tr>
	  		</table>--%>
	  		<input type="submit" class="btn btn-outline-secondary" value="결제하기" onclick="iamport()"> 
	  	</div>
	  	
	  <%@ include file="../footer.jsp"%> 
 </div>
</div>
<script type="text/javascript" src="js/reservation/payment.js"></script>
</body>
</html>