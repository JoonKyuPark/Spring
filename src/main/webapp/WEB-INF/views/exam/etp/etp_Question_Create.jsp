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
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/etp_Question_Create.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet"
	type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 등록</title>
</head>
<body>
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
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form role="form" id="QuestionForm" action="etp_Question_Create"
					method="post">
					<input type="hidden" name="etp_no" value=1> <label>문제
						이름</label> <input type="text" class="form-control" name="question_name"><br>
					<label>시험 선택</label><br> <select name="exam_no" id="exam_list"
						class="selectpicker col-md-4">
						<option>시험 선택</option>
						<c:forEach var="i" items="${etp_Exam_List }">
							<option value="${i.exam_no }">${i.exam_name }</option>
						</c:forEach>
					</select><br> <br> <label>할당 시간</label><br> <label><input
						type="text" id="question_second" name="question_second"
						onkeydown="return showKeyCode(event)" style='ime-mode: disabled;'>
						&nbsp;초</label><br> <br> <label>문제 내용</label>
					<textarea id="question_content" name="question_content"
						class="form-control"></textarea>
					<br> <br> <label>문제 정답 키워드</label><br>
					<div align="right">
						<font size="2"><i class="xi-warning"></i> &nbsp; 키워드는 ','로
							구분됩니다. <font color="red">(띄어쓰기 금지)</font></font>
					</div>
					<textarea id="question_answer" name="question_answer"
						class="form-control"></textarea>
					<br>
					<div class="col-md-4"></div>
					<div class="col-md-2">
						<input type="button" class="btn btn-info" value="등 록"
							onclick="create()">
					</div>
					<div class="col-md-2">
						<a href="etp_Exam_Main"><input type="button" id="go_exam_main"
							class="btn btn-info" value="취 소"></a>
					</div>
					<div class="col-md-4"></div>
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
		<div class="col-md-2"></div>
	</div>
</body>
</html>