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
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<link href="../css/sb-admin.css" rel="stylesheet">
<link href="../css/resume.css" rel="stylesheet">
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
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
						MyPage <small>이력서 목록${abc }</small>
					</h1>
					<ol class="breadcrumb">

						<li class="active"><a href="create"><button
									class="resume_reg  bg-primary btn-primary btn">
									<i class="fa fa-file"></i>이력서 등록
								</button></a></li>
					</ol>
					<table class="resume_list_table table col-md-12">
						<tr>
							<th class="col-md-2">번호</th>
							<th class="col-md-2">사진</th>
							<th class="col-md-4">제목</th>
							<th class="col-md-2">관리</th>
							<th class="col-md-2">작성일</th>
						</tr>
						<c:forEach items="${list}" var="i">
							<tr>
								<c:set var="re_date" value="${i.resume_date}" />
								<c:set var="re_d" value="${fn:substring(re_date,0,10)}" />
								<!-- 2016-10-17까지 -->
								<td class="col-md-2">${i.resume_no}</td>
								<td class="col-md-2"><c:choose>
										<c:when test="${i.resume_img!= null}">
											<c:set var="head"
												value="${fn:substring(i.resume_img, 0, fn:length(i.resume_img) - 4) }" />
											<c:set var="pattern"
												value="${fn:substringAfter(i.resume_img, head)}" />
											<a href="Member_Resume_Img.jsp?seq=${i.resume_no}"> <img
												src="../resume_img/${head}_small${pattern}"
												class="img-thumbnail">
											</a>
										</c:when>
										<c:otherwise>
											<a href="Member_Resume_Img.jsp?seq=${i.resume_no}"> 사진추가
											</a>
										</c:otherwise>
									</c:choose></td>
								<td class="col-md-4"><a
									href="read?seq=${i.resume_no}">
										${i.resume_title} </a></td>
								<td class="col-md-2"><a
									href="Member_Resume_Update.jsp?seq=${i.resume_no}"> 수정 </a> | <a>삭제</a>
								</td>
								<td class="col-md-2">${re_d}</td>
							</tr>
						</c:forEach>
					</table>


					<button type="button" class="btn btn-info">기본 이력서 설정</button>
					<button type="button" class="btn btn-default" onclick="fnPrint">인쇄하기</button>

				</div>
			</div>
		</div>
	</div>
</body>
</html>