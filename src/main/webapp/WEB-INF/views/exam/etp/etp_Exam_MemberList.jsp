<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/etp_Exam_MemberList.js"></script>
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/etp_Exam_MemberList.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%@include file="../nav.jsp"%>

					<div class="col-md-10 col-sm-10 col-xs-10 outerDiv">
						
						<div class="col-md-10">
							
<h2>JOBIXAM MEMBER LIST</h2>
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
						<div class="col-md-2"></div>
					</div>
</body>
</html>