<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/js/exam/etp_Exam_Calendar.js"></script>
<!-- CSS -->
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-select.css"
	type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap.min.css" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" />
<link rel="stylesheet"
	href="../../../../resources/css/exam/etp_Exam_Calendar.css" />

<head></head>
<meta charset="UTF-8">
<title>J O B I X A M M A I N</title>
</head>
<body>
	<%@include file="../nav.jsp"%>
		<div class="col-sm-10 col-xs-10 col-md-10 outderDiv">

				<c:forEach var="i" items="${list }">
					<input type="hidden"
						value='<fmt:formatDate value="${i.exam_sdate }" pattern="yyyy/MM/dd"/>-${i.exam_no }'
						class="exam_sdate" name="${i.exam_name }">
					<input type="hidden"
						value='<fmt:formatDate value="${i.exam_ddate }" pattern="yyyy/MM/dd"/>'
						class="exam_ddate">
				</c:forEach>
				<div class="col-md-12" align="left"><h2> J O B I X A M &nbsp; C a l e n d a r </h2></div>
			<br>
				<div class="col-md-10" id="calendar"></div>
				<div class="col-md-2"></div>

		</div>
</body>
</html>