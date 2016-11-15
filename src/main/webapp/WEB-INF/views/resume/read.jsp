<%@page import="com.jobis.mem.resume.domain.Mem_Resume_allDTO"%>
<%@page import="java.util.List"%>
<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<link href="../css/sb-admin.css" rel="stylesheet">
<link href="../css/resume.css" rel="stylesheet">
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


<script type="text/javascript">
	var fnPrint = function() {
		window.print();
	};
</script>

<title>이력서 상세 페이지</title>
</head>
<body>



	<div id="wrapper">
		<!-- nav insert-->
		<%@include file="nav.jsp"%>
	


		<!-- content insert -->
		<div id="page-wrapper" class="col-lg-12">

			<br>
			<br>
			<div class="content col-lg-8">
				<form class="resume_form form-horizontal col-lg-12 img-thumbnail">
					<div class="form-group col-lg-12" id="selectArea">
						<br>
						<br> <br> <label for="resume_title_input" class="col-lg-2 control-label"> <span class="glyphicon glyphicon-pencil"></span>제목
						</label>
						<div class="col-lg-8">
							<h5>${re.resume_title}</h5>
						</div>
						<input type="button" value="인쇄" onClick="fnPrint()" class="col-lg-2 btn" /> <br> <br> <br> <label for="resume_income_input"
							class="col-lg-2 control-label" style="float: left;"> <i class="fa fa-krw"></i>희망연봉
						</label>
						<div class="col-lg-4">
							<h5>${re.hope_income}</h5>
						</div>
						<label for="resume_income_input" class="col-lg-2 control-label glyphicon glyphicon-usd">증명사진</label>
						<div class="col-lg-4">
							<img src="../resume_img/${re.resume_img}" class="img-thumbnail" style="max-width: '20px'" id="resume_img">
						</div>
						<br> <br> <br>



						<!-- resume_volun_field_form 지원분야 체크박스~~~~~~ -->

						<label class="resume_volun_field_label col-lg-2 control-label">지원분야</label>
						<div class="resume_volun_field_form col-lg-10">
							<h5>${re.volun_field}</h5>
						</div>
						<!-- ~~~resume_volun_field_form 지원분야 체크박스 -->


						<br> <br> <br>

						 <c:choose>
							<c:when test="${re.career_no==null}">
							</c:when>
							<c:otherwise>
								<div id="career_wrapper">
									<div id="career" class="form-inline career">
										<br> <span class="career-border col-lg-12"></span> <br> <label for="resume_career_etp_name_input"
											class="resume_career_etp_name_label col-lg-2 control-label">회사명</label>
										<div class="resume_career_etp_name_div col-lg-4">
											<h5>${re.career_etp_name}</h5>
										</div>
										<label for="resume_carrer_work_state_label" class="col-lg-2 control-label glyphicon glyphicon-envelope">재직여부</label>
										<div class="form-inline col-lg-4">
											<h5>${re.career_work_state}</h5>
										</div>
										<br> <br> <br> <label for="reportrange" class="resume_career_join_date_label col-lg-2 control-label"> 입사·퇴사일 </label>
										<div class="col-lg-4 form-inline reportrange" style="background: #fff; padding-top: 5px" onclick="cb()">
											<h5>${re.join_date}~ ${re.retire_date}</h5>
										</div>
										<label for="reportrange" class="resume_carrer_work_year_label col-lg-2 control-label"> 경력기간</label>
										<div class="col-lg-4">
											<h5>${re.work_year}</h5>
										</div>

										<br> <br> <br> <label for="resume_career_field_input" class="col-lg-2 control-label">경력 직종</label>
										<div class="resume_career_field_div col-lg-4">
											<h5>${re.career_field}</h5>
										</div>
										<label for="resume_work_dept_input" class="col-lg-2 control-label">근무부서</label>
										<div class="resume_work_dept_div col-lg-4">
											<h5>${re.work_dept}</h5>
										</div>


										<br> <br> <label for="resume_work_rank_input" class="col-lg-2 control-label">직급</label>
										<div class="resume_work_rank_div col-lg-4">
											<h5>${re.work_rank}</h5>
										</div>
										<label for="resume_responibility_field_input" class="col-lg-2 control-label">핵심역량</label>
										<div class="resume_responibility_field_div col-lg-4">
											<h5>${re.important_ability}</h5>
										</div>


										<br> <br> <label for="resume_retire_reasion_input" class="col-lg-2 control-label">퇴사사유</label>
										<div class="resume_retire_reasion_div col-lg-4">
											<h5>${re.retire_reasion}</h5>
										</div>
										<label for="resume_work_location_input" class="col-lg-2 control-label">근무지역</label>
										<div class="resume_work_location_div col-lg-4">
											<h5>${re.work_location}</h5>
										</div>


										<br> <br> <label for="resume_work_income_input" class="col-lg-2 control-label"><i class="fa fa-krw"></i>경력연봉</label>
										<div class="resume_work_income_div col-lg-4">
											<h5>${re.work_income}만원</h5>
										</div>

										<label for="resume_responibility_field_input" class="col-lg-2 control-label">경력업무</label>
										<div class="resume_responibility_field_div col-lg-4">
											<h5>${re.responibility_field}</h5>
										</div>

									</div>
									<!-- ~~~career div -->



									<!-- <h5 id="career_add_btn btn" onclick="career_add_btn_fn();" class="btn-info btn col-lg-12">경력 추가</h5> -->

									<span class="career-border col-lg-12"></span> <br>
								</div>
								<!-- career_wrapper 경력사항모음 -->
							</c:otherwise>
						</c:choose> 


						<br> <br> <br> <br> <br>

						 <div class="form-inline">
							<!-- 학력사항~~~ -->
							<label for="monthpicker" class="col-lg-2 control-label"><i class="fa fa-calendar"></i>입학연월</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.enter_date}</h5>
							</div>
							<label for="monthpicker" class="col-lg-2 control-label glyphicon glyphicon-calendar">졸업연월</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.graduation_date}</h5>
							</div>
						</div>
						<br> <br>

						<div class="form-horizontal">
							<label for="resume_school_name_input" class="col-lg-2 control-label">학교명</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.school_name}</h5>
							</div>


							<label for="resume_major" class="col-lg-2 control-label">학점</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.grade}</h5>
							</div>
						</div>
						<br> <br>
						<div class="form-horizontal">
							<label for="resume_major" class="col-lg-2 control-label">전공1</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.major_1}</h5>
							</div>
							<label for="resume_major" class="col-lg-2 control-label">전공2</label>
							<div class="resume_school_name_div col-lg-4">
								<h5>${re.major_2}</h5>
							</div>
						</div>
						<br> <br>
						<div id="license_wrapper" class="col-lg-12">
							<div class="license_div">
								<div class="license"></div>
							</div>
							<!-- <h5 id="license_add_btn btn" onclick="" class="btn-info btn col-lg-12">자격증추가</h5> -->
						</div>

						<div class="form-horizontal col-lg-12">
							<label for="resume_self_intro_cont" class="col-lg-12 control-label" style="text-align: left">자기소개</label>
							<textarea class="form-control col-lg-12" id="resume_self_intro_cont" rows="5" name="self_intro_cont">${re.self_intro_cont}</textarea>
						</div>
					</div>
					<!-- form-group -->


					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
				</form>
				<button class="resume_detail_return_btn col-lg-12 btn btn-primary" onclick="location.href='list'">돌아가기</button>
				<!-- ~~resume_form -->


			</div>
		</div>
	</div>
	<!-- /#div wrapper -->



</body>
</html>