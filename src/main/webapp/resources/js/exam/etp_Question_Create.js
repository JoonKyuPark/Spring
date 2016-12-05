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
	function checkByte() {
		$('textarea.question_content').keyup(function() {
			byteHandler(this);
		});
		function getTextLength(text) {
			var length = 0;

			for (var i = 0; i < text.length; i++) {
				if (escape(text.charAt(i)).length == 6) {
					length++; //한글일 때 2바이트 추가
					length++;
				}
				length++;
			}
			if(length > 3000){
				var content = $('textarea.question_content').val();
				var sub = content.substring(0,3000);
				$('textarea.question_content').val(sub);
				swal({
					title : " ",
					text : '3000자를 초과 할 수 없습니다.',
					type:'warning',
					confirmButtonText:'확인',
					closeOnConfirm : false
				});
				return;
			}
			return length;
		}
		function byteHandler(obj) {
			var text = $(obj).val();
			$('span.bytes').text(getTextLength(text));
		}
		
		$('textarea.question_answer').keyup(function() {
			byteHandler_1(this);
		});
		function getTextLength_1(text) {
			var length = 0;
			
			for (var i = 0; i < text.length; i++) {
				if (escape(text.charAt(i)).length == 6) {
					length++; //한글일 때 2바이트 추가
					length++;
				}
				length++;
			}
			if(length > 3000){
				var content = $('textarea.question_answer').val();
				var sub = content.substring(0,3000);
				$('textarea.question_answer').val(sub);
				swal({
					title : " ",
					text : '3000자를 초과 할 수 없습니다.',
					type:'warning',
					confirmButtonText:'확인',
					closeOnConfirm : false
				});
				return;
			}
			return length;
		}
		function byteHandler_1(obj) {
			var text = $(obj).val();
			$('span.bytes_1').text(getTextLength_1(text));
		}
	}
	checkByte();
}

function create() {
	var exam = $('#exam_list').val();
	var name = $('#question_name').val();
	var second = $('#question_second').val();
	var content = $('#question_content').val();
	var per = $('#percentage').val();
	var answer = $('#question_answer').val();

	if (name == "") {
		swal({
			title : " ",
			text : '문제 이름을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (exam == "시험 선택") {
		swal({
			title : " ",
			text : '시험을 선택해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (second == "") {
		swal({
			title : " ",
			text : '할당 시간을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (second == 0) {
		swal({
			title : " ",
			text : '할당 시간은 0 이 될 수 없습니다.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (content == "") {
		swal({
			title : " ",
			text : '문제 내용을 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (per == "") {
		swal({
			title : " ",
			text : '정답 범위를 입력해 주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (per < 1 || per > 100) {
		swal({
			title : " ",
			text : '정답 범위는 1 ~ 100까지 입니다.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	if (answer == "") {
		swal({
			title : " ",
			text : '정답 키워드를 입력해주세요.',
			type:'warning',
			confirmButtonText:'확인',
			closeOnConfirm : false
		});
		return;
	}
	var replace = $('#question_content').val().replace(/\n/g, "<br>");
	$('#question_content').val(replace);
	$('#QuestionForm').submit();

}