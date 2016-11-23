function showKeyCode(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
			|| keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39) {
		return;
	} else {
		return false;
	}
}
window.onload = function() {
	$('.btn-info').hover(function() {
		$(this).css('background', '#6695BE');
	});
	$('.btn-info').mouseout(function() {
		$(this).css('background', '#3679B5');
	});
}

function create(){
	var exam = $('#exam_list').val();
	if(exam == "시험 선택"){
		alert('시험을 선택해주세요.');
		return;
	}
	
	$('#QuestionForm').submit();
	
}