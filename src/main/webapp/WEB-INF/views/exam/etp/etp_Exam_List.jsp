<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!------- JQUERY -------->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/moment.js"></script>
<link rel="stylesheet"
	href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function changeColor() {
		$('.etp_Exam_Table_tr').hover(function() {
			$(this).css('background', '#E5E5E5');
		});
		$('.etp_Exam_Table_tr').mouseout(function() {
			$(this).css('background', 'none');
		});
	}

	$(document).ready(function() {
		$("#checkall").click(function() {
			if ($("#checkall").prop("checked")) {
				$("input[class=chk]").prop("checked", true);
			} else {
				$("input[class=chk]").prop("checked", false);
			}
		});

	});

	window.onload = function() {
		$('.btn-info').hover(function(){
			$(this).css('background', '#6695BE');
		});
		$('.btn-info').mouseout(function(){
			$(this).css('background', '#3679B5');
		});
		$('#exam_update_btn').click(
				function() {
					if ($(".chk:checked").length > 1) {
						alert("한개의 항목만 선택해주세요.")
					} else if ($(".chk:checked").length == 0) {
						alert("수정할 항목을 선택해주세요.")
					} else {
						alert('etp_Exam_Update?exam_no='
								+ $('.chk:checked').val());
						$("#etp_Exam_ListForm").attr(
								'action',
								'etp_Exam_Update?exam_no='
										+ $('.chk:checked').val()).submit();
					}
				});
		
		$('.btn-info').hover(function(){
			$(this).css('background', '#6695BE');
		});
		$('.btn-info').mouseout(function(){
			$(this).css('background', '#3679B5');
		});
		
		$('#exam_delete_btn').click(
				function(){
					var param = "";
					$('.chk:checked').each(function(index, entry){
						if(param == ""){
							param += "exam_no="+ $(entry).val(); 
						}else{
							param += "&exam_no="+ $(entry).val(); 
						}
						
					});
					$.ajax({
							url : "etp_Exam_Delete",
							type : "GET",
							data : param,
							success(data){
								alert('삭제가 완료되었습니다.');
								location.href='etp_Exam_List';
							}
					});
				});
	}
</script>
<style type="text/css">
.btn-info {
	background: #3679B5;
}

#etp_Exam_Table {
	width: 100%;
	font-family: "나눔고딕";
}

#etp_Exam_Table tr {
	height: 40px;
}

#etp_Exam_Table th {
	text-align: center;
}

#etp_Exam_Table td {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	text-align: center;
}

.box-footer {
	align: center;
}
</style>
</head>
<body>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="col-md-12">
			<h2>시험 일정 목록</h2>
			<hr>
			<form id="etp_Exam_ListForm">
				<table id="etp_Exam_Table">
					<tr>
						<th><input type="checkbox" id="checkall"></th>
						<th>번호</th>
						<th>시험 이름</th>
						<th>시험 과목</th>
						<th>응시 인원</th>
						<th>시험 시작일</th>
						<th>시험 종료일</th>
					</tr>
					<c:forEach var="Etp_ExamVO" items="${etp_Exam_List}">
						<tr class="etp_Exam_Table_tr" onmouseover="changeColor()">
							<td><input type="checkbox" class="chk" name="exam_no"
								value="${Etp_ExamVO.exam_no}"></td>
							<td>${Etp_ExamVO.exam_no}</td>
							<td>${Etp_ExamVO.exam_name}</td>
							<td>${Etp_ExamVO.exam_field}</td>
							<td>${Etp_ExamVO.exam_number}</td>
							<td><fmt:formatDate value="${Etp_ExamVO.exam_sdate}"
									pattern="yyyy-MM-dd" /></td>
							<td><fmt:formatDate value="${Etp_ExamVO.exam_ddate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
		<div class="col-md-6">
			<br> <input type="button" class="btn btn-info" value="글쓰기"
				onclick="location.href='etp_Exam_Create'">
		</div>
		<div class="col-md-6" align="right">
			<br> <input type="button" class="btn btn-info"
				id="exam_update_btn" value="수 정"> <input type="button"
				class="btn btn-info" id="exam_delete_btn" value="삭 제">
		</div>






		<div class="box-footer col-md-12">
			<div class="text-center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li><a href="etp_Exam_List?page=${pageMaker.startPage - 1}">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="etp_Exam_List?page=${idx}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a href="etp_Exam_List?page=${pageMaker.endPage +1}">&raquo;</a></li>
					</c:if>

				</ul>
			</div>


		</div>
		<!-- /.box-footer-->

		<form id="jobForm">
			<input type='hidden' name="page" value='${pageMaker.cri.perPageNum}'>
			<input type='hidden' name="perPageNum"
				value='${pageMaker.cri.perPageNum}'>
		</form>

	</div>
	<div class="col-md-2"></div>
</body>
</html>