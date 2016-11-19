<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!------- JQUERY -------->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/moment.js"></script>
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<!------- XE FONT -------->
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker-standalone.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.min.css">
<script
	src="../../../../resources/js/exam/bootstrap-datetimepicker.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
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
		alert('수정이 완료되었습니다.')
		$('#exam_updateForm').submit();
	};

	window.onload = function() {
		$('.btn-info').hover(function() {
			$(this).css('background', '#6695BE');
		});
		$('.btn-info').mouseout(function() {
			$(this).css('background', '#3679B5');
		});
	}
</script>
<style type="text/css">
.btn-info {
	background: #3679B5;
}

.examNumberForm {
	float: left;
	width: 20%;
}
</style>
</head>
<body>
	<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="etp_Exam_Main">시험메인</a></li>
				<li><a href="etp_Exam_List">시험목록</a></li>
				<li><a href="etp_Exam_Create">시험등록</a></li>
				<li><a href="Etp_Question_Reg">시험문제등록</a></li>
				<li><a href="Etp_Question_List">시험문제목록</a>
			</ul>
	</div>
	<h2 class="examRegTitle">시험 일정 등록</h2>
	<br>
	<div class="inputExamForm col-md-8">
		<form role="form" action="etp_Exam_Update" id="exam_updateForm"
			method="post">
			<input type="hidden" name="etp_no" value="1"> <input
				type="hidden" name="exam_no" value="${etp_ExamVO.exam_no }">
			<!-- 기업번호 꼭 넣기!! -->
			<div class="form-group col-md-12">
				<label><i class="xi-align-justify"></i>시험 이름</label>
				<div class="col-md-12">
					<input type="text" class="form-control col-md-12" name="exam_name"
						id="exam_name" value="${etp_ExamVO.exam_name }">
				</div>
				<br> <br> <br>
			</div>


			<div class="form-group col-md-6">
				<label><i class="xi-align-justify"></i>시험 기간</label> <br> <label
					for="inputSDate" class="examTerm col-md-12"><i
					class="xi-clock-o"></i> 시작일</label>
				<div class="col-md-12">
					<div class="form-group">
						<div class='input-group date datetimepicker'>
							<input type='text' class="form-control" name="exam_sdate"
								id="exam_sdate"
								value="<fmt:formatDate value="${etp_ExamVO.exam_sdate }" pattern="yyyy/MM/dd"/>"><span
								class="input-group-addon" onclick="cal()"><i
								class="xi-calendar"></i> </span>
						</div>
					</div>
				</div>
				<div class="col-md-6"></div>

				<label for="inputSDate" class="examTerm col-md-12"><i
					class="xi-clock"></i> 종료일</label>
				<div class="col-md-12">
					<div class="form-group">
						<div class='input-group date datetimepicker'>
							<input type='text' class="form-control" name="exam_ddate"
								id="exam_ddate"
								value="<fmt:formatDate value="${etp_ExamVO.exam_ddate }" pattern="yyyy/MM/dd"/>" />
							<span class="input-group-addon" onclick="cal()"><i
								class="xi-calendar"></i> </span>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group col-md-12">
				<label><i class="xi-align-justify"></i>응시인원</label><br>
				<div class="col-md-12">
					<input type="text" class="examNumberForm form-control col-md-3"
						name="exam_number" value="${etp_ExamVO.exam_number }"
						onkeydown="return showKeyCode(event)" id="exam_number"><label
						class="col-md-9" style="margin-top: 1%">명</label>
				</div>
				<br> <br>
			</div>

			<div class="form-group col-md-12">
				<label><i class="xi-align-justify"></i>시험과목</label><br> <select
					name="exam_field" class="selectpicker col-md-4" id="exam_field">
					<option>선택</option>
					<option value="Korean">문학</option>
					<option value="English">영어</option>
					<option value="Math">수학</option>
					<option value="Physics">물리</option>
					<option value="History">역사</option>
					<option value="IT">IT</option>
				</select>
			</div>
			<div class="form-group col-md-12">
				<div class="col-md-4"></div>
				<div class="col-md-2">
					<input type="button" class="btn btn-info" value="등 록"
						onclick="date_check()">
				</div>
				<div class="col-md-2">
					<a href="etp_Exam_Main"><input type="button"
						class="btn btn-info" value="취 소"></a>
				</div>
				<div class="col-md-4"></div>


			</div>
		</form>
	</div>
	<div class="col-md-2"></div>
</body>
</html>