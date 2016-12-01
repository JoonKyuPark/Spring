<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>                       
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>



<!-- Script -->
<!-- <script type="text/javascript"
	src="../../../../resources/js/exam/jquery-3.1.1.js"></script> -->
<!-- <script type="text/javascript"
	src="../../../../resources/js/exam/datetimepicker.js"></script> -->
<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/bootstrap-select.js"></script>
<!-- <script type="text/javascript"
	src="../../../../resources/js/exam/moment.js"></script> -->
<script type="text/javascript"
	src=../../../../resources/js/exam/etp_Exam_Create.js></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-datetimepicker-standalone.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-select.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/etp_Exam_Create.css" />
<head>
<meta charset="UTF-8">
<title>J O B I X A M R E G I S T R A T I O N</title>
<script type="text/javascript">
 	$(function() {
		$('.datetimepicker').datetimepicker({
			format : 'YYYY/MM/DD'
		});
	}); 
	
</script>
</head>
<body id="Etp_Exam_Reg">
	<%@include file="../nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12 col-md-12">
			<div class="card col-md-12">
				<div class="card-body col-md-12">
					<div class="col-md-12 outerDiv">
						<div class="col-md-12">
							<div class="inputExamForm col-md-12">
								<h2>R E G I S T R A T I O N</h2>
								<hr>
								<form role="form" action="etp_Exam_Create" id="exam_registForm"
									method="post">

									<div class="col-md-12">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>시험 이름</label>
										</div>
										<div class="col-md-12">
											<input type="text" id="exam_name"
												class="form-control col-md-12" name="exam_name"
												placeholder="내용을 입력하세요.">
										</div>
									</div>

									<br> <br>

									<div class="col-md-12">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>시험 기간</label>
										</div>

										<div class="col-md-6">
											<label for="inputSDate" class="examTerm"> <i
												class="xi-clock-o"></i> 시작일
											</label>
											<div class='input-group date datetimepicker'>
												<input type='text' class="form-control" name="exam_sdate"
													id="exam_sdate" onkeydown="return dontPressKey()" /> <span
													class="input-group-addon"><i class="xi-calendar"></i>
												</span>
											</div>
										</div>

										<div class="col-md-6">
											<label for="inputSDate" class="examTerm"> <i
												class="xi-clock"></i> 종료일
											</label>

											<div class='input-group date datetimepicker'>
												<input type='text' class="form-control" name="exam_ddate"
													id="exam_ddate" onkeydown="return dontPressKey()" /> <span
													class="input-group-addon"><i class="xi-calendar"></i>
												</span>
											</div>
										</div>

									</div>

									<br> <br>
									<div class="col-md-12">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>응시인원</label>
										</div>

										<div class="col-md-4">
											<input type="text" class="examNumberForm form-control"
												name="exam_number" id="exam_number"
												onkeydown="return showKeyCode(event)" placeholder="명">
										</div>

										<div class="col-md-8"></div>
									</div>

									<br> <br>

									<div class="col-md-12">
										<div class="col-md-12">
											<label><i class="xi-align-justify"></i>시험과목</label>
										</div>
										<div class="col-md-12">
											<select name="exam_field" id="exam_field"
												class="selectpicker ">
												<option>선택</option>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>