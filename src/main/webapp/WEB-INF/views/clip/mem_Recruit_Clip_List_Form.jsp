<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="../../../resources/css/recruit/mem/bootstrap.min.css" rel="stylesheet">
<link href="../../../resources/css/recruit/mem/custom2.css" rel="stylesheet">
<link rel="stylesheet" href="../../../resources/css/recruit/mem/sweetalert.css">
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	<script src="stylesheet" href="../../../resources/js/recruit/mem/sweetalert.min.js"></script>
	<script src="../../../resources/js/recruit/mem/sweetalert.min.js"></script>
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

		function button1_click(no) {
			swal(
					{
						title : " ",
						text : "잡이즈 기본 이력서로 온라인 지원 됩니다. ",
						type : "warning",
						showCancelButton : true,
						confirmButtonText : "지원하기",
						closeOnConfirm : false
					},
					function() {
						location.href="/receive/mem_Join_Receive_Create?rno="+no;
						swal("지원 성공!", "잡이즈 이력서로 온라인 지원 성공 했습니다.", "success");

					});
		}
		
		 function button1_click(no) {
			 window.open('/receive/mem_Join_Receive_Create_Form?rno='+no,'name','menubar=yes,resizable=yes,scrollbars=yes,status=yes,titlebar=yes,toolbar=yes,location=yes,width=550,height=700');
		 }
	</script>
</head>
<body>

	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">
					<table class="table table-hover">
						<thead>
							<tr height="30">
								<th width="50"><center>
										<div class="checks etrans">
											<input type="checkbox" id="allCheck"><label
												for="allCheck"></label>
										</div>
									</center></th>
								<th width="100"><center>스크랩일</center></th>
								<th width="100"><center>회사명</center></th>
								<th width="250"><center>채용제목</center></th>
								<th width="150"><center>입사지원</center></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" begin="0" end="${recruit_clip_List.size()-1}" step="1">
								<tr height="30">
									<td align="center">
										<div class="checks etrans">
											<input type="checkbox" id="${recruit_clip_List[i].recruit_no}"
												name="box"> <label for="${recruit_clip_List[i].recruit_no}"></label>
										</div>
									</td>
									<td align="center"><h4>${recruit_clip_List[i].recruit_clip_date}</h4></td>
									<td align="center"><h4> ${etp_List[i].etp_name}</h4></td>
									<td align="left"><h4>
											<a
												href="Member_Recruit_Detail.jsp?id=${recruit_clip_List[i].recruit_no}">${recruit_List[i].recruit_title}</a>
										</h4>
									<td align="center"><input type="button" id="button1" 
									onclick="button1_click(${recruit_clip_List[i].recruit_no})" value="지원하기" /></td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>