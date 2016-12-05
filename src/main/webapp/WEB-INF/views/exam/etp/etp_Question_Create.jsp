<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/etp_Question_Create.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/etp_Question_Create.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" />
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q U E S T I O N R E G I S T R A T I O N</title>
</head>
<body>
	<%@include file="../nav.jsp"%>

	<div class="col-md-10 col-sm-10 col-xs-10 outerDiv">
		<div class="col-md-12 inputForm">
			<h2>
				Q U E S T I O N <br> R E G I S T R A T I O N
			</h2>
			<hr>
			<form role="form" id="QuestionForm" action="etp_Question_Create"
				method="post">
				<input type="hidden" name="etp_no" value=1>
				<div class="col-md-12">
					<div class="col-md-6">
						<i class="xi-align-justify"></i><label>문제 이름</label>
					</div>
					<div class="col-md-12">
						<input type="text" class="form-control" name="question_name"
							id="question_name" placeholder="내용을 입력하세요.">
					</div>
				</div>

				<br> <br>

				<div class="col-md-12">
					<div class="col-md-12">
						<i class="xi-align-justify"></i><label>시험 선택</label>
					</div>
					<div class="col-md-12">
						<select name="exam_no" id="exam_list" class="selectpicker ">
							<option>시험 선택</option>
							<c:forEach var="i" items="${etp_Exam_List }">
								<option value="${i.exam_no }">${i.exam_name }</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<br> <br>

				<div class="col-md-12">
					<div class="col-md-12">
						<i class="xi-align-justify"></i><label>할당시간</label>
					</div>
					<div class="col-md-12">
						<label><input type="text" id="question_second"
							class="form-control" name="question_second"
							onkeydown="return showKeyCode(event)" style='ime-mode: disabled;'
							placeholder="초"></label>
					</div>
				</div>

				<br> <br>

				<div class="col-md-12">
					<div class="col-md-6">
						<i class="xi-align-justify"></i><label>문제 내용</label>
					</div>
					<div class="col-md-6" align="right">
						<font size="2" color="red"><i class="xi-warning"></i><span
							class="bytes">0</span><span>/3000</span></font>
					</div>
					<div class="col-md-12">
						<textarea id="question_content" name="question_content"
							class="form-control question_content" placeholder="내용을 입력하세요."></textarea>
					</div>
				</div>

				<br> <br>

				<div class="col-md-12">
					<div class="col-md-12">
						<i class="xi-align-justify"></i><label>문제 정답범위</label>
					</div>
					<div class="col-md-6">
						<label><input type="text" id="percentage"
							class="percentage form-control" name="correct_per"
							onkeydown="return showKeyCode(event)" style='ime-mode: disabled;'
							placeholder="%"></label>
					</div>
					<div class="col-md-6" align="right">
						<font size="3" color="#BAB9B9"><i class="xi-warning"></i>
							&nbsp; 예) 80 입력시 키워드가 80%이상 포함 되어있어야 정답으로 간주합니다.</font>
					</div>
				</div>

				<br> <br>

				<div class="col-md-12">
					<div class="col-md-6">
						<i class="xi-align-justify"></i><label>문제 정답 키워드</label>
					</div>
					<div class="col-md-6" align="right">
						<font size="3" color="#BAB9B9"><i class="xi-warning"></i>
							&nbsp; 키워드는 ','(따옴표)로 구분됩니다. <font color="red"> &nbsp; <i
								class="xi-warning"></i><span class="bytes_1">0</span><span>/3000</span>
						</font></font>
					</div>

					<div class="col-md-12">
						<textarea id="question_answer" name="question_answer"
							class="form-control question_answer" placeholder="내용을 입력하세요."></textarea>
					</div>
				</div>
				<div class="col-md-12 btnDiv">
					<div class="col-md-5"></div>
					<div class="col-md-1">
						<button class="btn btn-info" onclick="create()">
							<font size="3">등 록</font>
						</button>
					</div>
					<div class="col-md-1">
						<a href="etp_Exam_Main"><button id="go_exam_main"
								class="btn btn-info">
								<font size="3">취 소</font>
							</button></a>
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

</body>
</html>