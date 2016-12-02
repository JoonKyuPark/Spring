<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="../../../resources/css/recruit/mem/bootstrap.min.css"
	rel="stylesheet">
<link href="../../../resources/css/recruit/mem/custom2.css"
	rel="stylesheet">
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">




	//합격 누를 때 
	function button_click1(rno) {
		var exam_no=$('#exam_no').val();
		var resume_no=rno;
		$.ajax({
			type : 'GET',
			url : 'Etp_Pass_Update?exam_no='+exam_no+'&resume_no='+resume_no,
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					var select = document.getElementsByClassName('exam_select');
					for(var i=0; i < select.length; i++){
						select[i].reset();
					}
					alert("등록 되었습니다.");
				}
			}
		});
	};
</script>


</head>
<body>
	<%-- 
	<c:if test="${sessionScope.pass_resume!=0}">
		<table class="table table-hover">
			<thead>
				<tr height="30">
					<th align="right" width="20"><center>
							<div class="checkbox">
								<input type="checkbox" id="allCheck"><label
									for="allCheck"></label>
							</div>
						</center></th>
					<th width="100"><center>이름</center></th>
					<th width="100"><center>이력서제목dd</center></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="0"
					end="${sessionScope.pass_resume.size()-1}" step="1">
					<tr height="30">
						<td align="right"><center>
								<div class="checkbox">
									<input type="checkbox"
										id="${sessionScope.pass_resume[i].resume_no}"> <label
										for="${sessionScope.pass_resume[i].resume_no}"></label>
								</div>
							</center></td>
						<td align="left"><h4>${sessionScope.pass_resume[i].resume_title}</h4></td>
						<td align="left"><h4>${sessionScope.pass_resume[i].resume_title}</h4></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
 --%>

	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">
					<div class="col-md-12">
						<table class="table table-hover">
							<thead>
								<tr height="30">
									<th align="right" width="20"><center>
										</center></th>
									<th width="100"><center>회사명</center></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${recruit_infor.size()>0}">
									<c:forEach var="i" begin="0" end="${recruit_infor.size()-1}"
										step="1">
										<tr height="30">
											<td align="right">
												<center>
													<div class="checkbox">
														<input type="radio" id="${recruit_infor[i].recruit_no}" name="recruit_select"
															value="${recruit_infor[i].recruit_no}"> <label
															for="${recruit_infor[i].recruit_no}"></label>
													</div>
												</center>
											</td>
											<td align="left"><h4>
													${recruit_infor[i].recruit_title}</h4></td>
										</tr>

									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
					<br> <br>

					<div id="template" class="col-md-12">

						<table class="table table-hover">
							<thead>
								<tr height="30">
									<th width="100"><center>이름</center></th>
									<th width="100"><center>이력서제목</center></th>
									<th width="100"><center>합격여부</center></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${pass_resume_list.size()>0}">
									<c:forEach var="i" begin="0" end="${pass_resume_list.size()-1}" step="1">
										<tr height="30" class="memberList" id = ${pass_resume_list[i].resume_no }>
											<td align="left"><h4>${pass_resume_list[i].resume_title}</h4>
											</td>
											<td align="left"><h4>${pass_resume_list[i].resume_title}</h4>
											</td>
											<td>
												<form class ="exam_select">
													<select id="exam_no" name="exam_no">
														<option>시험 선택</option>
														<c:forEach var="j" items="${examlist }">
															<option value="${j.exam_no }">${j.exam_name }</option>
														</c:forEach>
													</select>
												</form>
											</td>
											<td><button id="button1"
													onclick="button_click1(${pass_resume_list[i].resume_no})">합격</button>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>