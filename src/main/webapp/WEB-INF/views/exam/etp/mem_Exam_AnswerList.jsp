<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<script src="../../../../resources/js/exam/mem_Exam_AnswerList.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link rel="stylesheet"
	href="../../../../resources/css/exam/mem_Exam_AnswerList.css">
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<title></title>
</head>
<body>
	<%@include file="../nav.jsp"%>

					<div class="col-md-10 col-sm-10 col-xs-10 outerDiv">

						<div class="col-md-10">
							<h2>회원 정답 목록</h2>
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
						<div class="col-md-2"></div>
					</div>
</body>
</html>