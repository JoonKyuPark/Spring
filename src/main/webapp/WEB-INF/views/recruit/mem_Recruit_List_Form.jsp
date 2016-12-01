<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>채용공고</title>
<!-- Bootstrap -->
<link href="../../../resources/css/recruit/mem/bootstrap.min.css"
	rel="stylesheet">
<link href="../../../resources/css/recruit/mem/custom2.css"
	rel="stylesheet">
<link href="../../../resources/css/recruit/mem/kfonts2.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/recruit/mem/mem_Recruit_List_Style.css" />
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">

	var rno = "${recruit_read.getRecruit_no()}";
	
	$(function() {
		$("#allCheck").click(function() {
			if ($("#allCheck").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		})
	})

	//스크랩 추가할때 
	function button1_click(rno){

		$.ajax({
			type : 'post',
			url : '/clip',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				recruit_no : rno
			}),//stringify문자열을 json으로
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("등록 되었습니다.");
					$("#clip_count").text("${mem_clip_count+1}");
				}
			}

		});
	};
</script>
</head>
<body>
	<div class="container">
		<div name="main_menu" class="container">
			<ul class="nav nav-pills">
				<li><a href="../main/mainDisplay.jsp">홈</a></li>
				<li><a href="../main/update.jsp">마이페이지</a></li>
				<li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
				<li><a href="Member_Recruit_List.jsp">전체채용정보</a></li>
				<li><a href="../main/smart.jsp">스마트매칭</a></li>
				<li><a>맞춤채용정보</a></li>
				<li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
				<li><a>채용등록</a></li>

			</ul>
		</div>
		<a href="Member_Recruit_List.jsp?id=all">전체</a> <a
			href="Member_Recruit_List.jsp?id=seoul">서울시</a> <a
			href="Member_Recruit_List.jsp?id=gg">경기도</a>
		<table class="table table-hover">
			<thead>
				<tr height="30">
					<th width="50"><center>
							<div class="checks etrans">
								<input type="checkbox" id="allCheck"><label
									for="allCheck"></label>
							</div>
						</center></th>
					<th width="100"><center>회사명</center></th>
					<th width="250"><center>채용제목</center></th>
					<th width="150"><center>근무조건</center></th>
					<th width="100"><center>등록일마감일</center></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="0" end="${recruit_list.size()-1}" step="1">
					<tr height="30">
						<td align="center">
							<div class="checks etrans">
								<input type="checkbox" id="${recruit_list[i].recruit_no}"
									name="box"> <label for="${recruit_list[i].recruit_no}"></label>
							</div>
						</td>
						<td align="center"><h4>${etp_read_list[i].etp_name}</h4></td>
						<td align="left"><h4>
								<a
									href="/recruit/mem_Recruit_Read_Form?rno=${recruit_list[i].recruit_no}">${recruit_list[i].recruit_title}</a>
							</h4>
							<button id="button3" onclick="button1_click(${recruit_list[i].recruit_no})">관심 채용 등록</button> <a
							href="/clip/mem_Recruit_Clip_List_Form">좋아요리스트</a></td>
						<td align="center">${recruit_list[i].hire_type}<br>${recruit_list[i].ac_ability_no}<br>봉급&nbsp
							${recruit_list[i].income_qualification}<br>근무요일&nbsp${recruit_list[i].recruit_day}
						</td>
						<td align="center">${recruit_list[i].receive_ddate}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

		<div class="box-footer">

			<div class="text-center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li><a
							href="mem_Recruit_List_Form${pageMaker.makeQuery(pageMaker.startPage-1) }">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="mem_Recruit_List_Form${pageMaker.makeQuery(idx)}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="mem_Recruit_List_Form${pageMaker.makeQuery(pageMaker.endPage+1)}">&raquo;</a></li>
					</c:if>

				</ul>
			</div>

		</div>
		<!-- /.box-footer-->
	</div>
</body>
</html>