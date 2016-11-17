<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	SimpleDateFormat format = new SimpleDateFormat("yyyy");
	Date date = new Date();
	String strYear = format.format(date);
	int year = Integer.parseInt(strYear);
%>

<!DOCTYPE html>
<html>
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
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="../../../../resources/js/exam/bootstrap-datetimepicker.min.js"></script>

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
<head>
<meta charset="UTF-8">
<title>Registration Exam</title>
</head>
<body id="Etp_Exam_Reg">
	<div>
		<div class="col-md-2">Logo</div>
		<div class="col-md-8">TopMenu</div>
		<div class="col-md-2">Empty</div>
		<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="Etp_Exam_Main.jsp">시험메인</a></li>
				<li><a href="Etp_Exam_List.jsp">시험목록</a></li>
				<li><a href="Etp_Exam_Reg.jsp">시험등록</a></li>
				<li><a href="Etp_Question_Reg.jsp">시험문제등록</a></li>
				<li><a href="Etp_Question_List.jsp">시험문제목록</a>
			</ul>
		</div>
		<div class="col-md-8">
			<h2 class="examRegTitle">시험 일정 등록</h2>
			<br>
			<div class="col-md-2"></div>
			<div class="inputExamForm col-md-8">
				<form role="form" action="etp_Exam_Create" id="exam_registForm"
					method="post">
					<input type="hidden" name="etp_no" value="1">
					<!-- 기업번호 꼭 넣기!! -->
					<div class="form-group col-md-12">
						<label><i class="xi-align-justify"></i>시험 이름</label>
						<div class="col-md-12">
							<input type="text" id="exam_name" class="form-control col-md-12"
								name="exam_name" placeholder="내용을 입력하세요.">
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
										id="exam_sdate" /> <span class="input-group-addon"
										onclick="cal()"><i class="xi-calendar"></i> </span>
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
										id="exam_ddate" /> <span class="input-group-addon"
										onclick="cal()"><i class="xi-calendar"></i> </span>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group col-md-12">

						<label><i class="xi-align-justify"></i>응시인원</label><br>
						<div class="col-md-12">
							<input type="text" class="examNumberForm form-control col-md-3"
								name="exam_number" id="exam_number"
								onkeydown="return showKeyCode(event)"><label
								class="col-md-9" style="margin-top: 1%">명</label>
						</div>
						<br> <br>
					</div>

					<div class="form-group col-md-12">
						<label><i class="xi-align-justify"></i>시험과목</label><br> <select
							name="exam_field" id="exam_field" class="selectpicker col-md-4">
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
		</div>
		<div class="col-md-2">Right Menu(3)</div>
		<div class="col-md-1"></div>
		<div class="footer col-md-10">footer</div>
		<div class="col-md-1"></div>
	</div>
</body>
</html>