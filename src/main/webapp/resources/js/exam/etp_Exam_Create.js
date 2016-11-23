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

function cal() {
	$('.datetimepicker').datetimepicker({
		format : 'YYYY/MM/DD'
	});
};

function date_check() {
	var sdate = $('#exam_sdate').val().split('/');
	var ddate = $('#exam_ddate').val().split('/');
	var sdateCompare = new Date(sdate[0], sdate[1], sdate[2]);
	var ddateCompare = new Date(ddate[0], ddate[1], ddate[2]);

	if (sdateCompare.getTime() > ddateCompare.getTime()) {
		alert('종료일이 시작일보다 빠릅니다.');
		return;
	}
	;

	var name = $('#exam_name').val();
	var sdate_1 = $('#exam_sdate').val();
	var ddate_1 = $('#exam_ddate').val();
	var field = $('#exam_field').val();
	var number = $('#exam_number').val();
	if (name == "") {
		alert('시험 이름을 입력해주세요.');
		return;
	} else if (sdate_1 == "") {
		alert('시험 시작일을 입력해주세요.');
		return;
	} else if (ddate_1 == "") {
		alert('시험 종료일을 입력해주세요.');
		return;
	} else if (field == "선택") {
		alert('시험 과목을 입력해주세요.');
		return;
	} else if (number == "") {
		alert('시험 인원을 입력해주세요.');
		return;
	}
	;
	$('#exam_registForm').submit();
};
window.onload = function() {
	$('.btn-info').hover(function() {
		$(this).css('background', '#6695BE');
	});
	$('.btn-info').mouseout(function() {
		$(this).css('background', '#3679B5');
	});
}