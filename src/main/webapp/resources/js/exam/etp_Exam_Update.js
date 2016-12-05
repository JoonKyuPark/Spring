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
		swal({
			title : " ",
			text : '시험 이름을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	} else if (sdate_1 == "") {
		swal({
			title : " ",
			text : '시험 시작일을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	} else if (ddate_1 == "") {
		swal({
			title : " ",
			text : '시험 종료일을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	} else if (number == "" || number == 0) {
		swal({
			title : " ",
			text : '시험 인원을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	} else if (field == "선택") {
		swal({
			title : " ",
			text : '시험 과목을 선택해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	;
	swal({
		title : " ",
		text : '수정이 완료되었습니다.',
		type:'warning',
		confirmButtonText:'확인',
		closeOnConfirm : false
	});
	$('#exam_updateForm').submit();
};
window.onload = function() {
	function showCheck(){
		if($('#exam_show').val() == 'hide'){
			$('#hide').prop('checked', true);
		}else{
			$('#show').prop('checked', true);
		}
	}
	showCheck();
	
	function select(){
		var html = '';
		html += '<select name="exam_field" class="col-md-3" id = "selectPicker">';
		html += '<option>선택</option>';
		if ($('#exam_field').val() == 'Korean') {
			html += '<option class="field" value="Korean" selected = "selected">문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		else if ($('#exam_field').val() == 'English') {
			html += '<option class="field" value="Korean">문학</option>';
			html += '<option class="field" value="English" selected = "selected">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		else if ($('#exam_field').val() == 'Math') {
			html += '<option class="field" value="Korean" >문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math" selected = "selected">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		else if ($('#exam_field').val() == 'Physics') {
			html += '<option class="field" value="Korean">문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics" selected = "selected">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		else if ($('#exam_field').val() == 'History') {
			html += '<option class="field" value="Korean">문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History" selected = "selected">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		else if ($('#exam_field').val() == 'IT') {
			html += '<option class="field" value="Korean">문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT" selected = "selected">IT</option>';
		}
		else{
			html += '<option class="field" value="Korean">문학</option>';
			html += '<option class="field" value="English">영어</option>';
			html += '<option class="field" value="Math">수학</option>';
			html += '<option class="field" value="Physics">물리</option>';
			html += '<option class="field" value="History">역사</option>';
			html += '<option class="field" value="IT">IT</option>';
		}
		html += '</select>';
		var inner = document.getElementById('selectField');
		inner.innerHTML = html;
	}
	select();
		
}