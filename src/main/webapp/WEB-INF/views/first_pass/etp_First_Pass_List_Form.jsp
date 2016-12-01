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

					<table class="table table-hover">
						<thead>
							<tr height="30">
								<th align="right" width="20"><center>
										<div class="checkbox">
											<input type="checkbox" id="allCheck"><label
												for="allCheck"></label>
										</div>
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
													<input type="checkbox" id="${recruit_infor[i].recruit_no}"
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

					<br> <br>

					<div id="template">
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
									<th width="100"><center>이력서제목</center></th>
									<th width="100"><center>합격여부</center></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${pass_resume_list.size()>0}">
									<c:forEach var="i" begin="0" end="${pass_resume_list.size()-1}"
										step="1">
										<tr height="30">
											<td align="right">
												<center>
													<div class="checkbox">
														<input type="checkbox"
															id="${pass_resume_list[i].resume_no}"> <label
															for="${pass_resume_list[i].resume_no}"></label>
													</div>
												</center>
											</td>
											<td align="left"><h4>${pass_resume_list[i].resume_title}</h4>
											</td>
											<td align="left"><h4>${pass_resume_list[i].resume_title}</h4>
											</td>
											 <td><a  href="/first_pass/Etp_Pass_Update?resume_no=${pass_resume_list[i].resume_no}">합격</a></td>
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