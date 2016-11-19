<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../bootstrap/bootstrap-select.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/exam/etp_Exam_Calendar.js"></script>
<!-- Css -->
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../../../../resources/css/exam/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../../../../resources/css/exam/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<link rel="stylesheet" href="../../../../resources/css/exam/etp_Exam_Calendar.css">


<head>
<meta charset="UTF-8">
<title>Etp Exam Main</title>
</head>



<body id="Etp_Exam_main">
	<div>
		<div class="col-md-2">Logo</div>
		<div class="col-md-8">TopMenu</div>
		<div class="col-md-2">Empty</div>
		<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="etp_Exam_Main">시험메인</a></li>
				<li><a href="etp_Exam_List">시험목록</a></li>
				<li><a href="etp_Exam_Create">시험등록</a></li>
				<li><a href="Etp_Question_Reg">시험문제등록</a></li>
				<li><a href="Etp_Question_List">시험문제목록</a>
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