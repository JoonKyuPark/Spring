<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<script>
	window.onload = function() {
		
		
		$('.answer_info').click(function() {
			if ($(this).parent().next().attr('style') == 'display: none;') {
				$(this).parent().next().show(500);
			} else {
				$(this).parent().next().hide();
			}

		});

		$('.correctBtn').click(
				function() {
					var ans_no = $(this).val();
					var btn = $(this)
					$.ajax({
						type : 'GET',
						datatype : 'text',
						url : 'etp_Member_toCorrect?ans_no=' + ans_no,
						success : function(data) {

							btn.parent().parent().prev().find('label').empty();

							btn.parent().parent().prev().append(
									'<label>정답 여부 : 정답</label>');
							swal({
								title : " ",
								text : '정답처리 되었습니다.',
								type:'success',
								confirmButtonText:'확인',
								closeOnConfirm : false
							});
						}
					});
				});
		$('.incorrectBtn').click(
				function() {
					var ans_no = $(this).val();
					var btn = $(this)
					$.ajax({
						type : 'GET',
						datatype : 'text',
						url : 'etp_Member_toIncorrect?ans_no=' + ans_no,
						success : function(data) {
							btn.parent().parent().prev().find('label').empty();

							btn.parent().parent().prev().append(
									'<label>정답 여부 : 오답</label>');
							swal({
								title : " ",
								text : '오답처리 되었습니다.',
								type:'error',
								confirmButtonText:'확인',
								closeOnConfirm : false
							});
						}
					});
				});
	}
</script>
<style type="text/css">
body {
	font-family: '나눔고딕 !important';
}

table {
	width: 100%;
	border-radius: 10px;
	-moz-border-radius:10px;
}

.td {
	padding: 0px;
	background : #FFF3F3;

}
th{
	background : #fce4e2;
	
}
textarea {
	width: 100%;
}

.question_answer {
	border: 3px solid #DADADA !important;
	border-radius: 10px;
	padding: 3%;
}
.btn-info{
	border : 2px solid  #f6b9b3!important;
	background: #f6b9b3 !important;
}
.btn_info:HOVER{
	border : 2px solid  #f6b9b3!important;
	background : #fce4e2 !important;
}
.answer_info {
	border-bottom: 3px solid #DADADA !important;;
	padding-top: 1%;
	padding-bottom: 1%;
}

.btn_th {
	border-bottom: 3px solid #DADADA !important;
}
.outerDiv{
	height : 1050px;
	background : white;
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
							<h2>&nbsp; 회원 정답 목록</h2>
							<table class="table table-hover">
								<c:forEach var="i" items="${mem_answer }">
									<tr>
										<th class="answer_info" style="width: 70%;">
										문제번호 :
											${i.question_no } &nbsp; &nbsp; &nbsp;<c:if
												test="${i.correct_answer == 'correct'}">
												<label> &nbsp;정답 여부 : 정답</label>
											</c:if> <c:if test="${i.correct_answer == 'incorrect'}">
												<label> &nbsp;정답 여부 : 오답</label>
											</c:if>
										</th>
										<th style="width: 30%;" class="btn_th">
											<div style="vertical-align: bottom;">
												<button class="correctBtn btn btn-info" value="${i.ans_no }">정답처리</button>
												<button class="incorrectBtn btn btn-info"
													value="${i.ans_no }">오답처리</button>
											</div>
										</th>
									</tr>
									<tr style="display: none;">
										<td colspan="2" class="td">${i.question_answer }</td>

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