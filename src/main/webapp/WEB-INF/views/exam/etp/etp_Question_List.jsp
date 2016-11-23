<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<!-- CSS -->
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 목록</title>
<script type="text/javascript">
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
body {
	font-family: '나눔고딕';
}

.btn-info{
	background : #3679B5;
}

#etp_Question_Table {
	width: 100%;
}

#etp_Question_Table th {
	text-align: center;
}

#etp_Question_Table td {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	text-align: center;
}

#etp_Question_Table tr {
	height: 40px;
}
</style>
</head>
<body>
	<div class="col-md-2">
		<ul class="nav nav-pills">
			<li><a href="etp_Exam_Main">시험메인</a></li>
			<li><a href="etp_Exam_List">시험목록</a></li>
			<li><a href="etp_Exam_Create">시험등록</a></li>
			<li><a href="etp_Question_Create">시험문제등록</a></li>
			<li><a href="Etp_Question_List">시험문제목록</a></li>
		</ul>
	</div>
	<div class="col-md-8">
		<h2>시험 문제 목록</h2>
		<hr>
		<div class="col-md-12">

			<table id="etp_Question_Table">
				<tr>
					<th class="col-md-1">번호</th>
					<th class="col-md-5">문제 이름</th>
					<th class="col-md-6">문제 내용</th>
				</tr>
				<c:forEach var="i" items="${etp_Question_List }">
					<tr class="etp_Exam_Table_tr">
						<td>${i.question_no }</td>
						<td>${i.question_name }</td>
						<td>${i.question_content }</td>
					</tr>
				</c:forEach>
			</table>
			<c:if test="${empty etp_Question_List }">
			<br><br>
			<div align="center">
				<span style = "font-size : 25px; margin : auto;">등록된 문제가 없습니다.</span>
			</div>
			</c:if>
			<br>
			<a href="etp_Question_Create"><button class="btn btn-info">새 문제</button></a>
			<a href="etp_Exam_List"><button class="btn btn-info">시험 목록</button></a>
		</div>
	</div>
	<div class="col-md-2"></div>
</body>
</html>