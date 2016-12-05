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
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/etp_Exam_List.js"></script>
<script src="../../../../resources/js/exam/bootstrap-switch.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link href="../../../../resources/css/exam/etp_Exam_List.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-switch.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>J O B I X A M L I S T</title>
</head>
<body onload="reset()">
	<%@include file="../nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12 col-md-12">
			<div class="card col-md-12">
				<div class="card-body col-md-12">

					<div class="col-md-12 outerDiv">
						<div class="col-md-12 listForm">
							<h2>J O B I X A M &nbsp; L I S T</h2>
							<form id="etp_Exam_ListForm" name="form">
								<table id="etp_Exam_Table" class="table table-hover">
									<tr>
										<th><input type="checkbox" id="checkall"></th>
										<th>번호</th>
										<th>시험 이름</th>
										<th>시험 과목</th>
										<th>응시 인원</th>
										<th>시험 시작일</th>
										<th>시험 종료일</th>
										<th>시험 상태</th>
										<th>시험 인원</th>
									</tr>
									<c:forEach var="Etp_ExamVO" items="${etp_Exam_List}">
										<tr class="etp_Exam_Table_tr">
											<td id="exam_no"><input type="checkbox" class="chk"
												name="exam_no" value="${Etp_ExamVO.exam_no}"></td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }">${Etp_ExamVO.exam_no}</td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }">${Etp_ExamVO.exam_name}</td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }"><c:set
													var="field" value="${Etp_ExamVO.exam_field }" /> <c:choose>
													<c:when test="${field eq 'English'}">영어</c:when>
													<c:when test="${field eq 'Korean'}">문학</c:when>
													<c:when test="${field eq 'Math'}">수학</c:when>
													<c:when test="${field eq 'Physics'}">물리</c:when>
													<c:when test="${field eq 'History'}">역사</c:when>
													<c:when test="${field eq 'IT'}">IT</c:when>
												</c:choose></td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }">${Etp_ExamVO.exam_number}</td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }"><fmt:formatDate
													value="${Etp_ExamVO.exam_sdate}" pattern="yyyy-MM-dd" /></td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }"><fmt:formatDate
													value="${Etp_ExamVO.exam_ddate}" pattern="yyyy-MM-dd" /></td>
											<td class="question_list" title="${Etp_ExamVO.exam_no }"><c:set
													var="state" value="${Etp_ExamVO.exam_show }" /> <c:choose>
													<c:when test="${state eq 'show' }">공개</c:when>
													<c:when test="${state eq 'hide' }">비공개</c:when>
												</c:choose></td>
											<td>
												<a href = "etp_Exam_MemberList?exam_no=${Etp_ExamVO.exam_no }">[바로가기]</a>
											</td>
										</tr>

									</c:forEach>
								</table>
							</form>
						</div>
						<div class="col-md-12">
							<div class="col-md-4">
								<br> <button class="btn btn-info" 
									onclick="location.href='etp_Exam_Create'"><font color = "black" size="3">시험 등록</font></button>
							</div>
							<div class="col-md-4"></div>
							<div class="col-md-4" align="right">
								<br> <button class="btn btn-info"
									id="exam_update_btn" value="수 정"><font color = "black" size="3">수 정</font></button> 
									<button class="btn btn-info" id="exam_delete_btn"> <font color = "black" size="3">삭 제</font></button>
							</div>
						</div>
						<div class="box-footer col-md-12">
							<div class="text-center col-md-12">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li><a
											href="etp_Exam_List?page=${pageMaker.startPage - 1}">&laquo;</a></li>
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
							<input type='hidden' name="page"
								value='${pageMaker.cri.perPageNum}'> <input
								type='hidden' name="perPageNum"
								value='${pageMaker.cri.perPageNum}'>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>