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
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<script type="text/javascript">
<<<<<<< HEAD
 window.onload=function(){
	$('.recruit_list').click(function(){
		var rno = $(this).find('input').val();
=======
	$(function() {
		$("#allCheck").click(function() {
			if ($("#allCheck").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		})
	})

	$(document).ready(function() {

		$("input:checkbox").change(function() {
			var str = "";
			$("input:checkbox:checked").each(function(index) {
				str += $(this).val() + ",";
			});
			alert("dd");
			$.ajax({
				type : 'post',
				url : '/first_pass/etp_First_Pass_List_Form?checkArray=' + str,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				success : function(result) {
					alert("dd");
					alert(result);
					if (result.getEntity() == 'SUCCESS') {
						$("#template").html(tag);
					}
				}

			});
		});

	});
	
	function button_click1(rno){

>>>>>>> refs/remotes/HanMooYoung/ParkSeRyoung6
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
						html += '<td title="td"><center>';
						html += '<button class="btn btn-info" id = "button_'+entry.resume_no+'" onclick="button_click1('+entry.resume_no+')" title="button">합격';
						html += '</button><center>';
						html += '</td>';
						html += '</tr>';
						$('#tbody').append(html);

				});
				$.ajax({
					type : 'GET',
					datatype : 'json',
					url : 'etp_Exam_List',
					success : function(data){
						var exam ='<td title="td1">';
						exam += '<select name = "exam_no" class="form-control exam_no" title="select">';
						exam += '<option>시험 선택</option>';
						$.each(data, function(index, entry){
								exam += '<option value='+entry.exam_no+'>'+entry.exam_name+'</option>';							
						});
						exam += '</select>';
						exam += '</td>';
						$('.resume_title').after(exam);
					}
				});
			}
		});
	});
}

	//합격 누를 때 
	function button_click1(rno) {
		var that = $('#button_'+rno);
		var exam_no=that.parent().parent().prev().children().val();
		if(exam_no =='시험 선택'){
			swal({
				title : " ",
				text : '시험을 선택해주세요.',
				type : 'warning',
				confirmButtonText:'확인',
				closeOnConfirm : false
			});
			return;
		}
		var resume_no=rno;
		$.ajax({
			type : 'GET',
			url : 'Etp_Pass_Update?exam_no='+exam_no+'&resume_no='+resume_no,
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {	
					that.parent().parent().parent().hide('1000');
					swal({
						title : " ",
						text : '등록되었습니다.',
						type : 'success',
						confirmButtonText:'확인',
						closeOnConfirm : false
					});
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
													<center>
														<h4>${recruit_infor[i].recruit_no }</h4>
													</center></td>
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
											<td><center>
													<h4>${pass_resume_list[i].resume_no}</h4>
												</center></td>
											<td align="left" class="resume_title"><h4>
													<nobr>${pass_resume_list[i].resume_title}</nobr>
												</h4></td>
											<td>

														<select name="exam_no" class="form-control exam_no">
															<option>시험 선택</option>
															<c:forEach var="j" items="${examlist }">
																<option value="${j.exam_no }">${j.exam_name }</option>
															</c:forEach>
														</select>
												</td>
											<td><center>
													<button id="button_${pass_resume_list[i].resume_no}" class="btn btn-info"
														onclick="button_click1(${pass_resume_list[i].resume_no})">합격</button>
												</center></td>
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