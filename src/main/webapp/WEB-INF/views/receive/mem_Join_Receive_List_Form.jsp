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
<link href="../../../resources/css/recruit/mem/bootstrap.min.css" rel="stylesheet">
<link href="../../../resources/css/recruit/mem/custom2.css" rel="stylesheet">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
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
										<th align="right" width="20"><center>
												<div class="checkbox">
													<input type="checkbox" id="allCheck"><label
														for="allCheck"></label>
												</div>
											</center></th>
										<th width="100"><center>회사명</center></th>
										<th width="300"><center>지원내역</center></th>
										<th width="100"><center>지원일</center></th>
										<th width="50"><center>열람여부</center></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" begin="0" end="${mem_receive_list.size()-1}" step="1">
										<tr height="30">
											<td align="right">
												 <div class="checkbox">
													<input type="checkbox" id="${mem_receive_list[i].recruit_no}"> 
														<label for="${mem_receive_list[i].recruit_no}"></label>
												</div>
											</td>
											<td align="center"><h4>
													<a
														href="../recruit_infor/recruit_detail_infor.jsp?id=${mem_receive_list[i].recruit_no}"> ${etp_List[i].etp_name} </a>
												</h4></td>
											<td align="left"><h4>  ${recruit_List[i].recruit_title} </h4> <br>지원자:명<br>지원서류:이력서</td>
											<td align="center">${mem_receive_list[i].receive_date}</td>
											<td align="center">${mem_receive_list[i].reading}<br> <a>지원취소</a></td>
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