<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<!-- Script -->
<script type="text/javascript" src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script type="text/javascript" src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script type="text/javascript" src="../../../../resources/js/exam/moment.js"></script>
<script type="text/javascript" src=../../../../resources/js/exam/etp_Exam_Create.js></script>
<script type="text/javascript" src="../../../../resources/js/exam/bootstrap-datetimepicker.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap-theme.min.css"  />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" />
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap-datetimepicker-standalone.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/bootstrap-select.css"/>
<link rel="stylesheet" type="text/css" href="../../../../resources/css/exam/etp_Exam_Create.css" />
<head>
<meta charset="UTF-8">
<title>시험 등록</title>
</head>
<body id="Etp_Exam_Reg">
	<div>
		<div class="col-md-2">Logo</div>
		<div class="col-md-8">TopMenu</div>
		<div class="col-md-2">Empty</div>
		<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="etp_Exam_Main">시험메인</a></li>
				<li><a href="etp_Exam_List">시험목록</a></li>
				<li><a href="etp_Exam_Create">시험등록</a></li>
				<li><a href="etp_Question_Create">시험문제등록</a></li>
				<li><a href="Etp_Question_List">시험문제목록</a>
			</ul>
		</div>
		<div class="col-md-8">
			<div class="col-md-2"></div>
			<h2 class="examRegTitle">시험 일정 등록</h2>
			<br>
			<div class="col-md-3"></div>
			<div class="inputExamForm col-md-6">
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
								onkeydown="return showKeyCode(event)"
								style='ime-mode: disabled;'><label class="col-md-9"
								style="margin-top: 1%">명</label>
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
			<div class="col-md-3"></div>
		</div>
		<div class="col-md-2">Right Menu(3)</div>
		<div class="col-md-1"></div>
		<div class="footer col-md-10">footer</div>
		<div class="col-md-1"></div>
	</div>
</body>
</html>