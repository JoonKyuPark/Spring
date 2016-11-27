<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/moment.js"></script>
<script
	src="../../../../resources/js/exam/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/etp_Exam_Update.js"></script>
<!-- CSS -->
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap.min.css" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker-standalone.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.css"
	type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/etp_Exam_Update.css"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시험 수정</title>
				<script type="text/javascript">

				</script>
</head>
<body>
	<div class="col-md-2">
		<ul class="nav nav-pills">
			<li><a href="etp_Exam_Main">시험메인</a></li>
			<li><a href="etp_Exam_List">시험목록</a></li>
			<li><a href="etp_Exam_Create">시험등록</a></li>
			<li><a href="etp_Question_Create">시험문제등록</a></li>
			<li><a href="Etp_Question_List">시험문제목록</a>
		</ul>
	</div>
	<h2 class="examRegTitle">시험 일정 수정</h2>
	<br>
	<div class="inputExamForm col-md-8">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form action="etp_Exam_Update" id="exam_updateForm" method="post" name = "form">
				<input type="hidden" id="exam_field"
					value="${etp_ExamVO.exam_field }"> <input type="hidden"
					name="etp_no" value="1"> <input type="hidden"
					name="exam_no" value="${etp_ExamVO.exam_no }">
					<input type = "hidden" id="exam_show" value = "${etp_ExamVO.exam_show }">
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
					<label><i class="xi-align-justify"></i>시험과목</label><br>
					<div id = "selectField" class="col-md-12">
					
					</div>
				</div>
				<div class="col-md-12">
					<input type="radio" id="show" name="exam_show" value="show">&nbsp; <label><font
						size="3">시험 공개</font></label> &nbsp; <input type="radio" id="hide" name="exam_show"
						value="hide">&nbsp; <label><font size="3">시험
							비공개</font></label>
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
	</div>
	<div class="col-md-3"></div>
</body>
</html>