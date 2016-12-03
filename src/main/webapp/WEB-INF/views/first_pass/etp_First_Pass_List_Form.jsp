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
	src="../../../resources/js/recruit/mem/jquery-3.1.1.js"></script>
<script type="text/javascript"
	src="../../../resources/js/recruit/mem/bootstrap.min.js"></script>

<script type="text/javascript">
 window.onload=function(){
	$('.recruit_list').click(function(){
		var rno = $(this).find('input').val();
		$.ajax({
			type : 'GET',
			datatype : 'json',
			url : 'etp_Refresh_List?rno='+rno,
			success : function(data){
				$('#tbody').empty();
				$.each(data,function(index, entry){
					var html = "";
						html+= '<tr height = "30" class="memberList">';
						html += '<td><center>';
						html += entry.resume_no;
						html += '</td></center>';
						html += '<td class="resume_title">';
						html += entry.resume_title;
						html += '</td>';
						html += '<td><center>';
						html += '<button class="btn btn-info" id = "buttion1" onclick="button_click1('+entry.resume_no+')">합격';
						html += '</button><center>';
						html += '</td>';
						html += '</tr>';
						$('#tbody').append(html);
						$.ajax({
							type : 'GET',
							datatype : 'json',
							url : 'etp_Exam_List',
							success : function(data){
								var exam ='<td>';
								exam += '<form class="exam_select">';
								exam += '<select id = "exam_no" name = "exam_no" class="form-control">';
								exam += '<option>시험 선택</option>';
								$.each(data, function(index, entry){
										exam += '<option value='+entry.exam_no+'>'+entry.exam_name+'</option>';							
								});
								exam += '</select>';
								exam += '</form>';
								exam += '</td>';
								$('.resume_title').after(exam);
							}
						});
				});
			}
		});
	});
}

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
<style type="text/css">
table {
	width: 100%;
	table-layout: fixed;
}

#first_th {
	width: 5%;
}

#second_th {
	width: 80%;
}

#third_th {
	width: 10%;
}

#fourth_th {
	width: 5%;
}

td {
	text-overflow: ellipsis;
	overflow: hidden;
}

th {
	text-overflow: ellipsis;
	overflow: hidden;
}

#th_1 {
	width: 5%;
}

#th_2 {
	width: 60%;
}

#th_3 {
	width: 5%;
}

#th_4 {
	width: 10%;
}

#th_5 {
	width: 10%;
}

#th_6 {
	width: 10%;
}
</style>

</head>
<body>
	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">
					<div class="col-md-12">
						<form id="recruit_form">
							<table class="table table-hover">
								<thead>
									<tr height="30">
										<th id="th_1"><center>채용공고 번호</center></th>
										<th id="th_2"><center>채용공고 제목</center></th>
										<th id="th_3"><center>경력</center></th>
										<th id="th_4"><center>채용시작일</center></th>
										<th id="th_5"><center>채용종료일</center></th>
										<th id="th_6"><center>모집분야</center></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${recruit_infor.size()>0}">
										<c:forEach var="i" begin="0" end="${recruit_infor.size()-1}"
											step="1">
											<tr height="30" class="recruit_list">
												<td><input type="hidden"
													value="${recruit_infor[i].recruit_no }">
													<center><h4>${recruit_infor[i].recruit_no }</h4></center></td>
												<td align="left">
													<h4>
														<nobr>${recruit_infor[i].recruit_title }</nobr>
													</h4>
												</td>
												<td>
													<center>
														<h4>${recruit_infor[i].career_check }</h4>
													</center>
												</td>

												<td>
													<center>
														<h4>${recruit_infor[i].receive_sdate }</h4>
													</center>
												</td>
												<td>
													<center>
														<h4>${recruit_infor[i].receive_ddate }</h4>
													</center>
												</td>
												<td>
													<center>
														<h4>${recruit_infor[i].recruit_field }</h4>
													</center>
												</td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</form>
					</div>
					<br> <br>

					<div id="template" class="col-md-12">

						<table class="table col-md-12 table-hover">
							<thead>
								<tr height="30">
									<th id="first_th"><center>
											<nobr>이력서 번호</nobr>
										</center></th>
									<th id="second_th"><center>
											<nobr>이력서제목</nobr>
										</center></th>
									<th id="third_th"><center>
											<nobr>시험 선택</nobr>
										</center></th>
									<th id="fourth_th"><center>
											<nobr>합격여부</nobr>
										</center></th>
								</tr>
							</thead>
							<tbody id="tbody">
								<tr height="10">
									<td colspan="4"><center>전체 지원 이력서</center></td>
								</tr>
								<c:if test="${pass_resume_list.size()>0}">
									<c:forEach var="i" begin="0" end="${pass_resume_list.size()-1}"
										step="1">
										<tr height="30" class="memberList">
											<td><center><h4>${pass_resume_list[i].resume_no}</h4></center>
											</td>
											<td align="left"><h4>
													<nobr>${pass_resume_list[i].resume_title}</nobr>
												</h4></td>
											<td><center>
													<form class="exam_select">

														<select id="exam_no" name="exam_no" class="form-control">
															<option>시험 선택</option>
															<c:forEach var="j" items="${examlist }">
																<option value="${j.exam_no }">${j.exam_name }</option>
															</c:forEach>
														</select>
													</form>
												</center></td>
											<td><center><button id="button1" class="btn btn-info"
													onclick="button_click1(${pass_resume_list[i].resume_no})">합격</button></center></td>
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