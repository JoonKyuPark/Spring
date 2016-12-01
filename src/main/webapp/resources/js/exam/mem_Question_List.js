history.pushState(null, null, location.href);
window.onpopstate = function(event) {
	history.go(1);
};

document.oncontextmenu = function(e) {
	alert('오른쪽 버튼 사용은 금지되어있습니다.');
	return false;
}

$(document).keydown(function(e) {
	key = (e) ? e.keyCode : event.keyCode;
	var t = document.activeElement;

	if (key == 8 || key == 116 || key == 17 || key == 82) {
		if (key == 8) {
			if (t.tagName != "TEXTAREA") {
				if (e) {
					e.preventDefault();
				} else {
					event.keyCode = 0;
					event.returnValue = false;
				}
			}
		} else {
			if (e) {
				e.preventDefault();
			} else {
				event.keyCode = 0;
				event.returnValue = false;
			}
		}
	}
});
window.onload = function() {
	function checkByte() {
		$('textarea.question_answer').keyup(function() {
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
			if (length > 3000) {
				var content = $('textarea.question_answer').val();
				var sub = content.substring(0, 3000);
				$('textarea.question_answer').val(sub);
				alert('3000자를 초과 할 수 없습니다.');
				return;
			}
			return length;
		}
		function byteHandler(obj) {
			var text = $(obj).val();
			$('span.bytes').text(getTextLength(text));
		}
	}
	checkByte();

	function content() {
		var content = document.getElementById('question_content').value;

		var html = content.replace(/<br>/gi, '\r\n');
		var contents = document.getElementById('question_contents');
		contents.innerHTML = html;
	}
	content();

	var second = document.getElementById("question_second");
	var time = second.value;

	var maxQuestion = document.getElementById('maxQuestion').value;
	var nowQuesiton = document.getElementById('exam_question_no').value - 1;
	if (maxQuestion == nowQuesiton) {
		$('.nextBtn').val('시험종료');
		$('.exitBtn').css('display', 'none');
	}
	function submit() {
		if (maxQuestion == nowQuesiton) {
			$('.mem_answerForm').attr({
				action : 'mem_Exam_List',
				method : 'post'
			}).submit();
			location.href('mem_Exam_List');
			alert(' 시험을 모두 마치셨습니다.\n회원님의 합격을 기원합니다.');
		} else {
			alert('제출이 완료되었습니다.');
			$('.mem_answerForm').attr({
				action : 'mem_Question_List',
				method : 'post'
			}).submit();
		}
	}

	setInterval(function() {
		second.value = time;
		time--;
		if (time == -1) {
			$('.nextBtn').trigger('click');
		}
	}, 1000);

	$('.nextBtn').click(function() {
		var form = $('.mem_answerForm').serialize();
		$.ajax({
			url : 'mem_Answer_Create',
			type : 'post',
			data : form
		});
		submit();
	});
	$('.exitBtn').click(function() {
		if (confirm("시험을 정말로 종료하시겠습니까?")) {
			location.href = 'mem_Exam_List';
		} else {
			return;
		}
	});
}