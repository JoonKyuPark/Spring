history.pushState(null, null, location.href);
window.onpopstate = function(event) {
	history.go(1);
};

document.oncontextmenu = function(e) {
	swal({
		title : " ",
		text : '오른쪽 버튼 사용은 금지되어 있습니다.',
		type : 'error',
		confirmButtonText : '확인',
		closeOnConfirm : false
	});
	return;
}

$(function() {
	$('.etp_Exam_Table_tr').hover(function() {
		alert('hi');
		$(this).children().css('background', '#ffecdf');
	}, function() {
		$(this).children().css('background', '#FFF3EB');
	});
});

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
					length++; // 한글일 때 2바이트 추가
					length++;
				}
				length++;
			}
			if (length > 3000) {
				var content = $('textarea.question_answer').val();
				var sub = content.substring(0, 3000);
				$('textarea.question_answer').val(sub);
				swal({
					title : " ",
					text : '3000자를 초과 할 수 없습니다.',
					type : 'error',
					confirmButtonText : '확인',
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

	function submit1() {
		if (maxQuestion == nowQuesiton) {
			swal({
				title : "시험을 모두 마치셨습니다.",
				text : '회원님의 합격을 기원합니다.',
				type : 'success',
				confirmButtonText : '확인',
				closeOnConfirm : false
			}, function() {
				$('.mem_answerForm').attr({
					action : 'mem_Exam_Main',
					method : 'post'
				}).submit();
			});

		} else {
			swal({
				title : " ",
				text : '제출이 완료되었습니다.',
				type : 'success',
				confirmButtonText : '확인',
				closeOnConfirm : false
			}, function() {
				$('.mem_answerForm').attr({
					action : 'mem_Question_List',
					method : 'post'
				}).submit();

			});
		}
	}

	setInterval(function() {
		second.value = time;
		time--;
		if (time == -1) {
			$('.nextBtn').trigger('click');
			clearInterval();
		}
	}, 1000);

	$('.nextBtn').click(function() {
		var replace = $('.question_answer').val().replace(/\n/g, "<br>");
		$('.question_answer').val(replace);
		var form = $('.mem_answerForm').serialize();
		$.ajax({
			url : 'mem_Answer_Create',
			type : 'post',
			data : form,
			success : function(data){
				submit1();
			}
		});

	});
	$('.exitBtn').click(function() {
		if (confirm("시험을 정말로 종료하시겠습니까?")) {
			location.href = 'mem_Exam_List';
		} else {
			return;
		}
	});
}