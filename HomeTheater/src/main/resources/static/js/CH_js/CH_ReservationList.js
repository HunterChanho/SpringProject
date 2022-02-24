function updateReservation(Vindex){
	var m_id = $("#m_id" + Vindex).val();
	var mo_number = $("#mo_number" + Vindex).val();
	var re_number = $("#re_number" + Vindex).val();
	var se_number = $("#se_number" + Vindex).val();
	var se_date = $("#se_date" + Vindex).val();
	var se_time = $("#se_time" + Vindex).val();
	$.ajax({
		url: "adminUpdateReservation",
		type: "POST",
		data: {
			"m_id": m_id,
			"mo_number": mo_number,
			"re_number": re_number,
			"se_number": se_number,
			"se_date": se_date,
			"se_time": se_time,
		},
		success: function(){
			alert("예매수정이 완료되었습니다.");
			location.href="reservationList";
		}
	})
}