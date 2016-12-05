<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('.tr').hover(function() {
			$(this).children().css('background', '#fce4e2');
		},function(){
			$(this).children().css('background', '#FFF3F3');
		});
	});
</script>
<style type="text/css">
body {
	font-family: '나눔고딕 !important';
}

table {
	width: 100%;
}

tr {
	height: 40px;
}

th {
	text-align: center;
	background: #fce4e2;
}

td {
	background: #FFF3F3;
	border-top: 1px solid #DADADA;
	border-bottom: 1px solid #DADADA;
	text-align: center;
}

.outerDiv {
	height: 1050px;
	background: white;
}
</style>
</head>
<body>
	<%@include file="../nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12 col-md-12">
			<div class="card col-md-12">
				<div class="card-body col-md-12">
					<div class="outerDiv">
						<div class="col-md-3"></div>
						<div class="col-md-6">
							<h2>&nbsp; 시험 인원 목록</h2>

							<table class="table">
								<tr>
									<th><center>회원 이름</center></th>
									<th><center>I D</center></th>
									<th><center>회원 제출 답안</center></th>
								</tr>

								<c:forEach var="i" items="${memlist }">
									<tr class="tr">
										<td>${i.member_name }</td>
										<td>${i.member_id }</td>
										<td><a
											href="mem_Exam_AnswerList?member_no=${i.member_no }&exam_no=${exam_no }">[바로가기]</a></td>
									</tr>
								</c:forEach>


							</table>

						</div>
						<div class="col-md-3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>