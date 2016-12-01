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
<script src="../../../../resources/js/exam/etp_Question_List.js"></script>
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="../bootstrap/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../../../resources/css/exam/etp_Quesiton_List.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q U E S T I O N L I S T</title>
<style type="text/css">
table {
	table-layout: fixed !important;
}

.question_content {
	text-overflow: ellipsis;
	overflow: hidden;
}
td
</style>
</head>
<body>
	<%@include file="../nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12 col-md-12">
			<div class="card col-md-12">
				<div class="card-body col-md-12">
					<div class="col-md-12 outerDiv">
						<div class="col-md-12 questionListForm">
							<h2>Q U E S T I O N &nbsp; L I S T</h2>
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
											<td class="question_content">${i.question_content }</td>
										</tr>
									</c:forEach>
								</table>
								<c:if test="${empty etp_Question_List }">
									<br>
									<br>
									<div align="center">
										<span style="font-size: 25px; margin: auto;">등록된 문제가
											없습니다.</span>
									</div>
								</c:if>
								<br> <a href="etp_Exam_List"><button
										class="btn btn-info">시험 목록</button></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>