<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<script src="../bootstrap/bootstrap-select.min.js"></script>
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />


<link rel="stylesheet" type="text/css"
	href="../bootstrap/bootstrap-monthpicker.css">

<script type="text/javascript"
	src="../bootstrap/bootstrap-monthpicker.js"></script>


<link rel="stylesheet" type="text/css"
	href="../bootstrap/daterangepicker.css">
<script type="text/javascript" src="../bootstrap/moment.js"></script>
<script type="text/javascript" src="../bootstrap/daterangepicker.js"></script>

<!-- 개인 설정 -->
<script type="text/javascript" src="../js/resume.js"></script>
<link href="../css/resume.css" rel="stylesheet" type="text/css" />



<script type="text/javascript"
	src="../bootstrap/bootstrap-select.min.js"></script>
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<%
	SimpleDateFormat format = new SimpleDateFormat("yyyy");
	Date date = new Date();
	String strYear = format.format(date);
	int year = Integer.parseInt(strYear);
%>

<style>
table.ui-datepicker-calendar {
	display: none;
}
</style>
<title>이력서 등록 페이지</title>

</head>
<body>
	<!-- nav insert-->
	<%@include file="nav.jsp"%>
	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">


					<!-- content insert -->
					<form class="resume_form form-horizontal"
						action="Member_Resume_UpdateOk.jsp" method="post">
						<div class="form-group col-lg-12">

							<!-- id확인 -->
							<input type="hidden" value="${re.resume_no}" name="resume_no">
							<input type="hidden" value="${re.ac_ability_no}"
								name="ac_ability_no"> <input type="hidden"
								value="${re.career_no}" name="career_no"> <br> <br>
							<br> <br> <br> <br> <label
								for="resume_title_input"
								class="glyphicon glyphicon-pencil col-md-2 control-label">제목</label>
							<div class="col-md-10">
								<input type="text" class="form-control" id="resume_title_input"
									placeholder="제목을 입력해주세요" name="resume_title"
									value="${re.resume_title}">
							</div>
							<br> <br> <br> <label for="resume_income_input"
								class="col-md-2 control-label">희망연봉</label>
							<div class="col-md-10">
								<input type="text" class="form-control" id="resume_income_input"
									placeholder="희망연봉" name="hope_income" value="${re.hope_income}">
							</div>
							<br> <br> <br>



							<!-- resume_volun_field_form 지원분야 체크박스~~~~~~ -->

							<label class="resume_volun_field_label col-md-2 control-label">지원분야</label>
							<div class="resume_volun_field_form col-md-10">

								<select class="form-control" name="volun_field">
									<option value="웹개발자">웹개발자</option>
									<option value="웹디자이너">웹디자이너</option>
									<option value="서버관리자">서버관리자</option>
									<option value="db설계자">db설계자</option>
									<option value="db관리자">db관리자</option>
								</select>
							</div>
							<!-- ~~~resume_volun_field_form 지원분야 체크박스 -->


							<br> <br> <br> <br> <br> <br>

							<!-- 경력사항div 시작-->
							<label for="career_radio_btn_new" class="col-md-2 control-label">경력사항</label>
							<div id="career_radio" class="col-md-10 form-inline">

								<input type="radio" value="new" name="career_radio_btn"
									checked="checked" id="career_radio_btn_new">신입
								&nbsp;&nbsp; <input type="radio" value="old"
									name="career_radio_btn" id="career_radio_btn_old">경력
							</div>
							<div id="career_wrapper">
								<div id="career" class="form-inline career">
									<br> <span class="career-border col-md-12"></span> <br>
									<label for="resume_career_etp_name_input"
										class="resume_career_etp_name_label col-md-2 control-label">회사명</label>
									<div class="resume_career_etp_name_div col-md-4">
										<input type="text" id="resume_career_etp_name_input"
											class="form-control" name="career_etp_name"
											value="${re.career_etp_name}">
									</div>
									<label for="resume_carrer_work_state_label"
										class="col-md-2 control-label">재직여부</label>
									<div class="form-inline">
										<select class="form-control col-md-4" name="career_work_state">
											<option value="N">퇴사</option>
											<option value="Y">재직</option>
										</select>
									</div>
									<br> <br> <br> <label for="reportrange"
										class="resume_career_join_date_label col-md-2 control-label">입사·퇴사일</label>
									<div id="reportrange" class="col-md-4 form-inline reportrange"
										style="background: #fff; cursor: pointer; padding-top: 5px"
										onclick="cb()">
										<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span
											class="resume_career_join_date_input">${re.join_date}~${re.retire_date}</span>
										<b class="caret"></b>

									</div>
									<input type="hidden" class="resume_career_join_date_hidden"
										name="join_date"> <input type="hidden"
										class="resume_career_retire_date_hidden" name="retire_date">
									<label for="reportrange"
										class="resume_carrer_work_year_label col-md-2 control-label">
										경력기간</label>
									<div class="col-md-4">
										<input type="hidden" class="resume_carrer_work_year"
											name="work_year" value="${re.work_year}">
										<h6 class="resume_carrer_work_year_h6">${re.work_year}</h6>
									</div>

									<br> <br> <br> <label
										for="resume_career_field_input" class="col-md-2 control-label">경력
										직종</label>
									<div class="resume_career_field_div col-md-4">
										<input type="text" id="resume_career_field_input"
											class="form-control" name="career_field"
											value="${re.career_field}">
									</div>
									<label for="resume_work_dept_input"
										class="col-md-2 control-label">근무부서</label>
									<div class="resume_work_dept_div col-md-4">
										<input type="text" id="resume_work_dept_input"
											class="form-control" name="work_dept" value="${re.work_dept}">
									</div>


									<br> <br> <label for="resume_work_rank_input"
										class="col-md-2 control-label">직급</label>
									<div class="resume_work_rank_div col-md-4">
										<input type="text" id="resume_work_rank_input"
											class="form-control" name="work_rank" value="${re.work_rank}">
									</div>
									<label for="resume_responibility_field_input"
										class="col-md-2 control-label">핵심역량</label>
									<div class="resume_responibility_field_div col-md-4">
										<input type="text" id="resume_responibility_field_input"
											class="form-control" name="important_ability"
											value="${re.important_ability}">
									</div>


									<br> <br> <label for="resume_retire_reasion_input"
										class="col-md-2 control-label">퇴사사유</label>
									<div class="resume_retire_reasion_div col-md-4">
										<input type="text" id="resume_retire_reasion_input"
											class="form-control" name="retire_reasion"
											value="${re.retire_reasion}">
									</div>
									<label for="resume_work_location_input"
										class="col-md-2 control-label">근무지역</label>
									<div class="resume_work_location_div col-md-4">
										<input type="text" id="resume_work_location_input"
											class="form-control" name="work_location"
											value="${re.work_location}">
									</div>


									<br> <br> <label for="resume_work_income_input"
										class="col-md-2 control-label">경력연봉</label>
									<div class="resume_work_income_div col-md-10">
										<input type="text" id="resume_work_income_input"
											class="form-control" name="work_income"
											value="${re.work_income}"> &nbsp;만원
									</div>

									<label for="resume_responibility_field_input"
										class="col-md-2 control-label">경력업무</label>
									<div class="resume_responibility_field_div col-md-4">
										<input type="text" id="resume_responibility_field_input"
											class="form-control" name="responibility_field"
											value="${re.responibility_field}">
									</div>



								</div>


								<label for="resume_career_year_input"
									class="col-md-2 control-label">총 경력</label>
								<div class="resume_career_year_div col-md-4">
									<input type="hidden" id="resume_career_year_input"
										name="career_year" value="${re.career_year}">
									<h6 class="resume_career_year_h6">${re.career_year}</h6>
									<br>
								</div>
								<!-- ~~career 경력사항 -->

								<!-- <h5 id="career_add_btn btn" onclick="career_add_btn_fn();" class="btn-info btn col-md-12">경력 추가</h5> -->

								<span class="career-border col-md-12"></span> <br>
							</div>
							<!-- career_wrapper 경력사항모음 -->

							<br> <br> <br> <br> <br>

							<div class="form-inline">
								<!-- 학력사항~~~ -->
								<label for="monthpicker" class="col-md-2 control-label">입학연월</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" value="2014-10"
										class="monthpicker form-control" name="enter_date"
										value="${re.enter_date}">
								</div>
								<label for="monthpicker" class="col-md-2 control-label">졸업연월</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" value="2014-10"
										class="monthpicker form-control col-md-4"
										name="graduation_date" value="${re.graduation_date}">
								</div>
							</div>
							<br> <br>

							<div class="form-horizontal">
								<label for="resume_school_name_input"
									class="col-md-2 control-label">학교명</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" id="resume_school_name_input"
										class="form-control col-md-12" name="school_name"
										value="${re.school_name}">
								</div>


								<label for="resume_major" class="col-md-2 control-label">학점</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" id="resume_major_b_input"
										class="form-control" name="grade" value="${re.grade}">
								</div>
							</div>
							<br> <br>
							<div class="form-horizontal">
								<label for="resume_major" class="col-md-2 control-label">전공1</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" id="resume_major_1_input"
										class="form-control" name="major_1" value="${re.major_1}">
								</div>
								<label for="resume_major" class="col-md-2 control-label">전공2</label>
								<div class="resume_school_name_div col-md-4">
									<input type="text" id="resume_major_2_input"
										class="form-control" name="major_2" value="${re.major_2}">
								</div>
							</div>
							<br> <br>
							<div id="license_wrapper" class="col-md-12">
								<div class="license_div">
									<div class="license"></div>
								</div>
								<!-- 	<h5 id="license_add_btn btn" onclick="" class="btn-info btn col-md-12">자격증추가</h5> -->
							</div>

							<div class="form-horizontal col-md-12">
								<label for="resume_self_intro_cont"
									class="col-md-12 control-label" style="text-align: left">자기소개</label>
								<textarea class="form-control col-md-12"
									id="resume_self_intro_cont" rows="5" name="self_intro_cont">${re.self_intro_cont}</textarea>
							</div>
							<input type="submit" value="변경"
							class="btn btn-primary col-md-offset-4 col-md-2"> <input
							type="reset" value="취소"
							class="btn btn-danger col-md-offset-4 col-md-2">
						</div>
						
						<!-- form-group -->

					</form>
					<!-- ~~resume_form -->

				</div>
			</div>
		</div>
	</div>

</body>
</html>