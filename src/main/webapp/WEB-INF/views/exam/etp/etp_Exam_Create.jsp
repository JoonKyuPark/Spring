﻿<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->


<script type="text/javascript"
	src="../../../../resources/js/exam/jquery-3.1.1.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/jquery-3.1.1.min.js" charset="UTF-8"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>

<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/etp_Exam_Create.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/moment.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap-datetimepicker.min.js"
	charset="UTF-8"></script>



<!-- CSS -->

<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	media="screen" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-theme.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.min.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-select.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/etp_Exam_Create.css" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>J O B I X A M R E G I S T R A T I O N</title>
</head>
<body id="Etp_Exam_Reg">
	<%@include file="../nav.jsp"%>
					<div class="col-sm-10 col-xs-10 col-md-10 outerDiv">
							<div class="inputExamForm col-md-10">
								<h2>R E G I S T R A T I O N</h2>
								<br>
								<form role="form" action="etp_Exam_Create" id="exam_registForm"
									method="post">

									<div class="col-md-12" style = "margin-bottom : 1%">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>시험 이름</label>
										</div>
										<div class="col-md-12">
											<input type="text" id="exam_name"
												class="form-control col-md-12" name="exam_name"
												placeholder="내용을 입력하세요.">
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
											<div class="input-group date datetimepicker">
												<input type='text' class="form-control" name="exam_sdate"
													id="exam_sdate" onkeydown="return dontPressKey()" /> <span
													class="input-group-addon" onclick="cal()"><i
													class="xi-calendar"></i> </span>
											</div>
										</div>

										<div class="col-md-6">
											<label for="inputSDate" class="examTerm"> <i
												class="xi-clock"></i> 종료일
											</label>

											<div class="input-group date datetimepicker">
												<input type='text' class="form-control" name="exam_ddate"
													id="exam_ddate" onkeydown="return dontPressKey()" /> <span
													class="input-group-addon" onclick="cal()"><i
													class="xi-calendar"></i> </span>
											</div>
										</div>

									</div>

									<div class="col-md-12" style = "margin-bottom : 1%">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>시험과목</label>
										</div>
											<div class="col-md-4">
											<select name="exam_field" id="exam_field"
												class="form-control">
												<option selected="selected">선택</option>
												<option value="Korean">문학</option>
												<option value="English">영어</option>
												<option value="Math">수학</option>
												<option value="Physics">물리</option>
												<option value="History">역사</option>
												<option value="IT">IT</option>
											</select>
										</div>
									</div>


									<div class="form-group col-md-12 btnDiv">
										<div class="col-md-5"></div>
										<div class="col-md-1">
											<input type="button" class="btn btn-info" value="등 록"
												onclick="date_check()">
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