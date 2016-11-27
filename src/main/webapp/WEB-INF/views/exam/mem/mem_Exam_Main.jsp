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
<script type="text/javascript" src="../../../../resources/js/exam/mem_Exam_Calendar.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="../../../../resources/css/exam/bootstrap-select.css" type="text/css" />
<link rel="stylesheet" href="../../../../resources/css/exam/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../../../../resources/css/exam/bootstrap-theme.min.css" type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css"/>
<link rel="stylesheet" href="../../../../resources/css/exam/etp_Exam_Calendar.css"/>

<head>
<meta charset="UTF-8">
<title>시험 메인</title>
</head>

<body id="Etp_Exam_main">
	<div>
		<div class="col-md-2">Logo</div>
		<div class="col-md-8">TopMenu</div>
		<div class="col-md-2">Empty</div>
		<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="mem_Exam_Main">시험메인</a></li>
				<li><a href="mem_Exam_List">시험목록</a></li>
			</ul>
		</div>
		<c:forEach var="i" items="${list }">
			<div class="exam_data">
				<input type="hidden"
					value='<fmt:formatDate value="${i.exam_sdate }" pattern="yyyy/MM/dd"/>-${i.exam_no }'
					class="exam_sdate" name="${i.exam_name }">
				<input type="hidden"
					value='<fmt:formatDate value="${i.exam_ddate }" pattern="yyyy/MM/dd"/>'
					class="exam_ddate">
			</div>
		</c:forEach>
		<div class="col-md-8" id="calendar"></div>
		<div class="col-md-2">Right Menu(3)</div>
		<div class="col-md-1"></div>
		<div class="footer col-md-10">footer</div>
		<div class="col-md-1"></div>
	</div>
</body>
</html>