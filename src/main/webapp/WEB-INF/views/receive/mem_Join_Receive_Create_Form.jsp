<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>부트스트랩</title>
<link rel="stylesheet" type="text/css" media="all"
	href="../../../resources/css/recruit/mem/daterangepicker.css" />
<link rel="import" href="../polymer/polymer.html">
<link rel="import" href="../iron-icon/iron-icon.html">
<link rel="stylesheet"
	href="../../../resources/css/recruit/mem/sweetalert.css">
<link href="../../../resources/css/recruit/mem/bootstrap.min.css"
	rel="stylesheet">
<link href="../../../resources/css/recruit/mem/kfonts2.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/receive/mem/mem_Receive_Create_Style.css" />
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=7f371f73f647744ce5b5552611d68ab9&libraries=services"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="../../../resources/js/recruit/mem/jquery-2.1.3.min.js"></script>
<script src="../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<script src="../../../resources/js/recruit/mem/bootstrap.min.js"></script>

<script type="text/javascript">
	function button1_click() {

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
					var checked_radio = $('input:radio[name=rdoName]:checked').val();
					  $.ajax({
							type:'post',
							url:'/receive/mem_Join_Receive_Create?recruit_no= ${recruit_read.getRecruit_no()}',
							headers: { 
							      "Content-Type": "application/json",
							      "X-HTTP-Method-Override": "POST" },
							dataType:'text',
							data: JSON.stringify({resume_no :checked_radio}),//stringify문자열을 json으로
							success:function(result){
								console.log("result: " + result);
								if(result == 'SUCCESS'){
									alert("등록 되었습니다.");
									swal("지원 성공!", "온라인 지원 성공 했습니다.", "success");
								}else if(result == 'fail'){
									swal("지원 실패!", "이미 지원하였습니다.", "warning");
								}
							}	
								
						});
				});
	}
</script>
</head>
<body>
	<div class="nav" id="receive_div">
		<h4 id="receive">&nbsp&nbsp입사지원</h4>
	</div>

	<div class="nav" id="recruit_title_div">
		<h5 id="etp_name">&nbsp&nbsp${etp_infor.etp_name}</h5>
		<h5 id="recruit_title">&nbsp&nbsp&nbsp${recruit_read.recruit_title}</h5>
	</div>

	<c:if test="${mem_resume.size()==0}">
		<div class="nav" id="resume_form_div">
			<h5 id="recruit_title">
				<center>작성된 자기소개서가 없습니다.</center>
			</h5>
		</div>
	</c:if>
	<c:if test="${mem_resume.size()>0}">
		<c:forEach var="i" begin="0" end="${mem_resume.size()-1}" step="1">
			<c:if test="${basic_resume_no==mem_resume[i].resume_no}">
				<div class="nav" id="resume_form_div">
					<div class="nav" id="basic_resume_form">
						<div class="nav" id="resume_title">
							<input name="rdoName" type="radio"
								value="${mem_resume[i].resume_no}">
							<h5 id="resume_title_name">&nbsp&nbsp기본 이력서</h5>
						</div>
						<h5 id="resume_title_h5">&nbsp&nbsp&nbsp${mem_resume[i].resume_title}</h5>
						<div class="nav" id="resume_cont">
							작성일&nbsp&nbsp&nbsp&nbsp${mem_resume[i].resume_date}</div>
					</div>
				</div>
			</c:if>
			<c:if test="${basic_resume_no!=mem_resume[i].resume_no}">
				<div class="nav" id="resume_form_div">
					<div class="nav" id="resume_form">
						<div class="nav" id="resume_title">
							<input name="rdoName" type="radio"
								value="${mem_resume[i].resume_no}">
							<h5 id="resume_title_name">&nbsp&nbsp이력서</h5>
						</div>
						<h5 id="resume_title_h5">&nbsp&nbsp&nbsp${mem_resume[i].resume_title}</h5>
						<div class="nav" id="resume_cont">
							작성일&nbsp&nbsp&nbsp&nbsp${mem_resume[i].resume_date}</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</c:if>

	<br>
	<br>
	<br>
	<center>
		<button type="button" id="button1" onclick="button1_click();"
			class="btn btn-primary btn-lg raised">즉시 지원</button>
	</center>
</body>
</html>