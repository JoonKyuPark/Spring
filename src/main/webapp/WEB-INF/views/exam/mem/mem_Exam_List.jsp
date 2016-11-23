<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<link href="../../../../resources/css/exam/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		$('#gotoexamlink').click(function() {
			$('#mem_Exam_ListForm').submit();
		});
	}
	history.pushState(null, null, location.href);
	window.onpopstate = function(event){
		history.go(1);
	};
</script>
<style type="text/css">
body {
	font-family: '나눔고딕';
}

#gotoexam {
	margin-top: 1%;
}

#mem_Exam_ListForm {
	float: left;
}
</style>
</head>
<body>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form id="mem_Exam_ListForm" action="mem_Question_List" method="POST">
				<input type="hidden" name="exam_question_no" value=1> <select
					id="mem_Selected_Exam" class="selectpicker" name="exam_no">
					<option selected="selected">시험 선택</option>
					<c:forEach var="i" items="${mem_Exam_List }">
						<option value="${i.exam_no }">${i.exam_name }</option>
					</c:forEach>
				</select>
				<div id="gotoexam">
					<label id="gotoexamlink" style="cursor: pointer"><font
						size="5">시험 보러가기<i class="xi-school"></i></font></label>
				</div>
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
	<div class="col-md-2"></div>
</body>
</html>