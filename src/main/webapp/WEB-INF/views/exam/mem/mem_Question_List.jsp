<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
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
				alert(' 시험을 모두 마치셨습니다.\n회원님의 합격을 기원합니다.');
				$('.mem_answerForm').attr({
					action : 'mem_Exam_List',
					method : 'post'
				}).submit();
				location.href('mem_Exam_List');
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
</script>
<style type="text/css">
body {
	font-family: '나눔고딕';
}
</style>
</head>
<body>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="col-md-3"></div>
		<form class="col-md-6 mem_answerForm" method="post">
			<input type="hidden" value="${max }" id="maxQuestion"> <input
				type="hidden" name="exam_question_no" id="exam_question_no"
				value="${question.exam_question_no+1 }"> <input
				type="hidden" name="exam_no" value="${question.exam_no }"> <input
				type="hidden" name="question_no" value="${question.question_no }">
			<input type="hidden" name="member_no" value=1>
			<table class="col-md-12">
				<tr>
					<td colspan="2" class="col-md-12"><label><font
							size="5">문제</font> &nbsp;</label><font size="5">${question.exam_question_no }</font><label>.</label></td>
				</tr>
				<tr>
					<td class="col-md-3"><label><font size="5">문제
								이름</font></label></td>
					<td class="col-md-9"><font size="4">${question.question_name }</font></td>
				</tr>
				<tr>
					<td class="col-md-12" colspan="2"><label><font
							size="5">문제 내용</font></label><br> <textarea
							class="col-md-12 form-control" readonly="readonly" rows="10">${question.question_content }</textarea></td>
				</tr>
				<tr>
					<td class="col-md-6"><label><font size="4">해답
								입력</font></label></td>
					<td class="col-md-6"><label class="col-md-6"><font
							size="4">할당시간</font></label>
						<div class="col-md-6">
							<input type="text" class="form-control" readonly="readonly"
								id="question_second" value="${question.question_second }">
						</div></td>
				</tr>
				<tr>
					<td class="col-md-12" colspan="2"><textarea
							name="question_answer" class="col-md-12 form-control" rows="10"></textarea></td>
				</tr>
			</table>
			<div class="col-md-6">
				<input type="button" class="btn btn-info exitBtn" value="시험종료">
			</div>
			<div class="col-md-6" align="right">
				<input type="button" class="btn btn-info nextBtn" value="다음 문제">
			</div>
		</form>
		<div class="col-md-3"></div>
	</div>
	<div class="col-md-2"></div>
</body>
</html>
















