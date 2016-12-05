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
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
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
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
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

td {
	text-overflow: ellipsis;
	overflow: hidden;
}

th {
	text-overflow: ellipsis;
	overflow: hidden;
}
</style>
</head>
<body>
	<%@include file="../nav.jsp"%>

	<div class="col-md-10 col-sm-10 col-xs-10 outerDiv">
		<div class="col-md-12 questionListForm">
			<h2>Q U E S T I O N &nbsp; L I S T</h2>
			<br>
			<div class="col-md-12">
				<table id="etp_Question_Table" class="table">
					<tr>
						<th class="col-md-1"><nobr>번호</nobr></th>
						<th class="col-md-5"><nobr>문제 이름</nobr></th>
						<th class="col-md-6"><nobr>문제 내용</nobr></th>
					</tr>
					<c:forEach var="i" items="${etp_Question_List }">
						<tr class="etp_Exam_Table_tr">
							<td><nobr>${i.question_no }</nobr></td>
							<td><nobr>${i.question_name }</nobr></td>
							<td class="question_content"><nobr>${i.question_content }</nobr></td>
						</tr>
					</c:forEach>
				</table>
				<c:if test="${empty etp_Question_List }">
					<br>
					<br>
					<div align="center">
						<span style="font-size: 25px; margin: auto;">등록된 문제가 없습니다.</span>
					</div>
				</c:if>
				<br> <a href="etp_Exam_List"><button class="btn btn-info">
						<font color="black" size="3">시험 목록</font>
					</button></a>
			</div>
		</div>
	</div>
</body>
</html>