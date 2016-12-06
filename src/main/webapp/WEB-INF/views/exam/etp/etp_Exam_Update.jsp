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
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
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
	href="../../../../resources/css/recruit/mem/sweetalert.css">
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
<title>J O B I X A M M O D I F Y</title>
</head>
<body>
	<%@include file="../nav.jsp"%>
					<div class="col-sm-10 col-xs-10 col-md-10outerDiv">
						<div class="inputExamForm col-md-10">
							<h2>M O D I F Y</h2>
<br>
							<form action="etp_Exam_Update" id="exam_updateForm" method="post"
								name="form">
								<input type="hidden" id="exam_field"
									value="${etp_ExamVO.exam_field }"> <input type="hidden"
									name="exam_no" value="${etp_ExamVO.exam_no }"> <input
									type="hidden" id="exam_show" value="${etp_ExamVO.exam_show }">

								<div class="col-md-12" style = "margin-bottom : 1%">
									<div class="col-md-12">
										<label><i class="xi-align-justify"></i>시험 이름</label>
									</div>
									<div class="col-md-12">
										<input type="text" class="form-control col-md-12"
											name="exam_name" id="exam_name"
											value="${etp_ExamVO.exam_name }">
									</div>
								</div>

								<div class="col-md-12" style = "margin-bottom : 1%">
									<div class="col-md-12">
										<label><i class="xi-align-justify"></i>시험 기간</label>
									</div>

									<div class="col-md-6">
										<label for="inputSDate" class="examTerm"> <i
											class="xi-clock-o"></i> 시작일
										</label>
										<div class='input-group date datetimepicker'>
											<input type='text' class="form-control" name="exam_sdate"
												id="exam_sdate"
												value="<fmt:formatDate value="${etp_ExamVO.exam_sdate }" pattern="yyyy/MM/dd"/>"><span
												class="input-group-addon" onclick="cal()"><i
												class="xi-calendar"></i> </span>
										</div>
									</div>

									<div class="col-md-6">
										<label for="inputSDate" class="examTerm"> <i
											class="xi-clock"></i> 종료일
										</label>
										<div class='input-group date datetimepicker'>
											<input type='text' class="form-control" name="exam_ddate"
												id="exam_ddate"
												value="<fmt:formatDate value="${etp_ExamVO.exam_ddate }" pattern="yyyy/MM/dd"/>" />
											<span class="input-group-addon" onclick="cal()"><i
												class="xi-calendar"></i> </span>
										</div>
									</div>

								</div>

								<div class="col-md-12" style = "margin-bottom : 1%">
									<div class="col-md-12">
										<label><i class="xi-align-justify"></i>시험과목</label>
									</div>
									<div id="selectField" class="col-md-12"></div>
								</div>

								<div class="col-md-12 showDiv" >
									<div class="col-md-4">
										<nobr>
											<input type="radio" id="show" name="exam_show" value="show">&nbsp;
											<label><font size="3">시험 공개</font></label>
										</nobr>
										&nbsp; &nbsp;
										<nobr>
											<input type="radio" id="hide" name="exam_show" value="hide">&nbsp;
											<label><font size="3">시험 비공개</font></label>
										</nobr>
									</div>
									<div class="col-md-8"></div>
								</div>

								<div class="col-md-12 btnDiv">
									<div class="col-md-5"></div>
									<div class="col-md-1">
										<button type="button" class="btn btn-info"
											onclick="date_check()">수 정</button>
									</div>
									<div class="col-md-1">
										<a href="etp_Exam_Main"><input type="button"
											class="btn btn-info" value="취 소"></a>
									</div>
									<div class="col-md-5"></div>
								</div>
							</form>
						</div>
						<div class="col-md-2"></div>
					</div>

</body>
</html>