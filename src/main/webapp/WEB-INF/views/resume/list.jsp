<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/bootstrap.css">
<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/bootstrap.js"></script>
	
	
	<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/moment.js"></script>
	
	
<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/resume.js"></script>


<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/daterangepicker.js"></script>

<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/bootstrap-monthpicker.js"></script>

<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/bootstrap-monthpicker.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">



<script type="text/javascript">
	var fnPrint = function() {
		document.body.innerHTML = selectArea.innerHTML;
		window.print();
	};
</script>
<%

	String uploadPath = request.getRealPath("resume_img");
	request.setAttribute("imgPath", uploadPath);
%>
<title>마이페이지_이력서 리스트</title>
</head>
<body>

	<!-- nav insert-->
	<%@include file="nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">
					<h1 class="page-header">
						MyPage <small>이력서 목록</small>
					</h1>
					
					<ol class="breadcrumb">

						<li class="active"><a href="create"><button
									class="resume_reg  bg-primary btn-primary btn">
									<i class="fa fa-file"></i>이력서 등록
								</button></a></li>
					</ol>
					<table class="resume_list_table table col-md-12">
						<tr>
							<th class="col-md-1"><input type="hidden" id="default_resume_no" value="${default_resume_no}"></th>
							<th class="col-md-1">번호</th>
							<th class="col-md-4">제목</th>
							<th class="col-md-2">관리</th>
							<th class="col-md-2">작성일</th>
							<th class="col-md-2"></th>
						</tr>
						<c:forEach items="${list}" var="i">
							<tr>
								<td><input type="radio" name="resume_no" value="${i.resume_no}" default="N"  class="resume_no"></td>
								<c:set var="re_date" value="${i.resume_date}" />
								<c:set var="re_d" value="${fn:substring(re_date,0,10)}" />
								<!-- 2016-10-17까지 -->
								<td>${i.resume_no}</td>
								<td><a
									href="read?seq=${i.resume_no}">
										${i.resume_title} </a></td>
								<td><a
									href="Member_Resume_Update.jsp?seq=${i.resume_no}"> 수정 </a> | <a>삭제</a>
								</td>
								<td>${re_d}</td>
								<td>
									<c:if test="${default_resume_no == i.resume_no}">
									  <div class="btn-group btn-toggle"> 
							    		<button id="open_Y_btn" class="btn btn-xs btn-success resume_open_btn">Y</button>
							        	<button id="open_N_btn" class="btn btn-xs btn-danger active resume_open_btn">N</button>
							        	<label id="resume_open_id">현재 설정 : ${i.resume_open}</label>
							    	  </div>
						    		</c:if>
								</td>
								
							</tr>
						</c:forEach>
					</table>


					<button type="button" class="btn btn-info" id="default_resume_btn">기본 이력서 설정</button>
					<button type="button" class="btn btn-default" onclick="fnPrint">인쇄하기</button>
				

				</div>
			</div>
		</div>
	</div>
</body>
</html>