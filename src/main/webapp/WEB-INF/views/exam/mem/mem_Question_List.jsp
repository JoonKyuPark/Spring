<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/mem_Question_List.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/mem_Quesiton_List.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>J O B I X A M</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="col-md-2"></div>
	<div class="col-md-8 outerDiv">
		<div class="col-md-3"></div>
		<form class="col-md-6 mem_answerForm" method="post">
			<input type="hidden" value="${max }" id="maxQuestion"> <input
				type="hidden" name="exam_question_no" id="exam_question_no"
				value="${question.exam_question_no+1 }"> <input
				type="hidden" name="exam_no" value="${question.exam_no }"> <input
				type="hidden" name="question_no" value="${question.question_no }">
			<input type="hidden" name="member_no" value=1> <input
				type="hidden" id="question_content"
				value="${question.question_content }">
			<table class="col-md-12">
				<tr style="height: 60px;">
					<td colspan="2" class="col-md-12"><label><font
							size="5">문제</font> &nbsp;</label><font size="5">${question.exam_question_no }</font><label>.</label></td>
				</tr>
				<tr style="height: 80px;">
					<td colspan="2" style="text-align: left;"><div
							class="col-md-2">
							<label><font size="5">문제 이름</font></label>
						</div>
						<div class="col-md-10">
							<font size="4">${question.question_name }</font>
						</div></td>
				</tr>
				<tr>
					<td class="col-md-12" colspan="2"><label><font
							size="5">문제 내용</font></label><br> <textarea id="question_contents"
							class="col-md-12 form-control" readonly="readonly" rows="10"></textarea></td>
				</tr>
				<tr style="height: 80px;">
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
					<td class="col-md-12" colspan="2">
						<div class="col-md-12" align="right">
							<font size="2" color = "red"><span class="bytes">0</span><span>/3000</span></font>
						</div> <textarea name="question_answer"
							class="col-md-12 form-control question_answer" rows="10"></textarea>
					</td>
				</tr>
			</table>
			<div class="col-md-12 btnForm">
				<div class="col-md-6">
					<input type="button" class="btn btn-info exitBtn" value="시험종료">
				</div>
				<div class="col-md-6" align="right">
					<input type="button" class="btn btn-info nextBtn" value="다음 문제">
				</div>
			</div>
		</form>
		<div class="col-md-3"></div>
	</div>
	<div class="col-md-2"></div>
</body>
</html>
















