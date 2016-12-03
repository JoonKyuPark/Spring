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
<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/jquery-3.1.1.js"></script>

<!------- BOOTSTRAP -------->
<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/moment.js"></script>

<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/bootstrap.css">
<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/bootstrap.js"></script>








<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/bootstrap-monthpicker.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/resume.css">


<style>
table.ui-datepicker-calendar {
	display: none;
}
</style>
<title>이력서 등록 페이지</title>
</head>
<body>
	<!-- nav insert-->
	<jsp:include page="nav.jsp" flush="true"></jsp:include>
	<div class="row">
		<div class="col-sm-12 col-xs-12 col-md-12">
			<div class="card col-md-12">
				<div class="card-body col-md-12">

					<h1 class="page-header">
						MyPage <small>이력서 등록</small>
					</h1>



					<form class="resume_form form-horizontal img-thumbnail col-md-12"
						action="/resume/create" method="post" id="form">
						<div class="form-group col-lg-12 col-md-12">
							<input type="hidden" name="member_no"
								value="<%-- ${m_no} --%>3333"> <br> <br> <br>
							<label for="resume_title_input"
								class="glyphicon glyphicon-pencil col-lg-2 control-label">제목</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="resume_title_input"
									placeholder="제목을 입력해주세요" name="resume_title"
									required="required">
							</div>
							<br> <br> <br> <label for="resume_income_input"
								class="col-lg-2 control-label">희망연봉</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="resume_income_input"
									placeholder="희망연봉" name="hope_income" required=" required">
							</div>
							<br> <br> <br>



							<!-- resume_volun_field_form 지원분야 체크박스~~~~~~ -->

							<label class="resume_volun_field_label col-lg-2 control-label">지원분야</label>
							<div class="resume_volun_field_form col-lg-10">

								<select class="form-control" name="volun_field">
									<option value="웹개발자">웹개발자</option>
									<option value="웹디자이너">웹디자이너</option>
									<option value="서버관리자">서버관리자</option>
									<option value="db설계자">db설계자</option>
									<option value="db관리자">db관리자</option>
								</select>
							</div>
							<!-- ~~~resume_volun_field_form 지원분야 체크박스 -->

							<!-- <label class="col-lg-2">증명사진</label>
					<div class="col-lg-2">
						<input type="file" name="resume_img">
					</div> -->

							<br> <br> <br> <br> <br> <br>

							<!-- 경력사항div 시작-->
							<label for="career_radio_btn_new" class="col-lg-2 control-label">경력사항</label>
							<div id="career_radio" class="col-lg-10 form-inline">

								<input type="radio" value="new" name="career_radio_btn"
									checked="checked" id="career_radio_btn_new">신입
								&nbsp;&nbsp; <input type="radio" value="old"
									name="career_radio_btn" id="career_radio_btn_old">경력
							</div>
							<div id="career_wrapper" class="col-md-12">
								<div id="career" class="form-inline career col-md-12">
									<div class="career_form col-md-12">
										<br> <span class="career-border col-lg-12"></span> <br>
										<label for="resume_career_etp_name_input"
											class="resume_career_etp_name_label col-lg-2 control-label">회사명</label>
										<div class="resume_career_etp_name_div col-lg-4">
											<input type="text" id="resume_career_etp_name_input"
												class="form-control" name="career_etp_name">
										</div>
										<label for="resume_carrer_work_state_label"
											class="col-lg-2 control-label">재직여부</label>
										<div class="form-inline">
											<select class="form-control col-lg-4"
												name="career_work_state">
												<option value="N">퇴사</option>
												<option value="Y">재직</option>
											</select>
										</div>
										<br> <br> <br> <label for="reportrange"
											class="resume_career_join_date_label col-lg-2 control-label">입사·퇴사일</label>
										<!-- <div id="reportrange" class="col-lg-4 form-inline reportrange"
											style="background: #fff; cursor: pointer; padding-top: 5px"
											 index="0">
											<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span
												class="resume_career_join_date_input" index="0"></span> <b
												class="caret"></b>

										</div> -->
										<div class="col-md-10">
											<input type="text"
												class="resume_career_join_date monthpicker form-control col-md-6"
												name="join_date" index="0"> 
												<input type="text"
												class="resume_career_retire_date monthpicker form-control col-md-6"
												name="retire_date" index="0">
										</div>
										<br> <br> <label for="reportrange"
											class="resume_carrer_work_month_label col-lg-2 control-label">
											경력기간</label>
										<div class="col-lg-10">
											<input type="hidden" class="resume_carrer_work_month"
												name="work_month" index="0" value="0">
											<h6 class="resume_carrer_work_month_h6" index="0">입사·퇴사일을 입력해주세요</h6>
										</div>

										<br> <br> <br> <label
											for="resume_career_field_input"
											class="col-lg-2 control-label">경력 직종</label>
										<div class="resume_career_field_div col-lg-4">
											<input type="text" id="resume_career_field_input"
												class="form-control" name="career_field">
										</div>
										<label for="resume_work_dept_input"
											class="col-lg-2 control-label">근무부서</label>
										<div class="resume_work_dept_div col-lg-4">
											<input type="text" id="resume_work_dept_input"
												class="form-control" name="work_dept">
										</div>


										<br> <br> <label for="resume_work_rank_input"
											class="col-lg-2 control-label">직급</label>
										<div class="resume_work_rank_div col-lg-4">
											<input type="text" id="resume_work_rank_input"
												class="form-control" name="work_rank">
										</div>
										<label for="resume_responibility_field_input"
											class="col-lg-2 control-label">핵심역량</label>
										<div class="resume_responibility_field_div col-lg-4">
											<input type="text" id="resume_responibility_field_input"
												class="form-control" name="important_ability">
										</div>

<!--  -->
										<br> <br> 
										<label for="resume_retire_reason_input" class="col-lg-2 control-label">퇴사사유</label>
										<div class="resume_retire_reason_div col-lg-4">
											<input type="text" id="resume_retire_reason_input" class="form-control" name="retire_reason"/>
										</div>
<!--  -->
										
										
										<label for="resume_work_location_input"
											class="col-lg-2 control-label">근무지역</label>
										<div class="resume_work_location_div col-lg-4">
											<input type="text" id="resume_work_location_input"
												class="form-control" name="work_location">
										</div>


										<br> <br> <label for="resume_work_income_input"
											class="col-lg-2 control-label">경력연봉</label>
										<div class="resume_work_income_div col-lg-4">
											<input type="number" id="resume_work_income_input"
												class="form-control" name="work_income" placeholder="만원">
											&nbsp;
										</div>

										<label for="resume_responibility_field_input"
											class="col-lg-2 control-label">경력업무</label>
										<div class="resume_responibility_field_div col-lg-4">
											<input type="text" id="resume_responibility_field_input"
												class="form-control" name="responibility_field">
										</div>

									</div>

								</div>



								<!-- ~~career 경력사항 -->

								<h5 id="career_add_btn btn" onclick="career_add_btn_fn();"
									class="btn-info btn col-lg-12">경력 추가</h5>

								<!-- 	<span class="career-border col-lg-12"></span>  -->
								<br>
							</div>
							<!-- career_wrapper 경력사항모음 -->

							<br> <br> <br> <br> <br>

							<div class="form-inline col-md-12 form-horizontal">
								<!-- 학력사항~~~ -->
								<label class="col-md-2">최종 학력</label>
								<div class="resume_ed_division col-md-10">
									<select name="ed_division">
										<option value="1">고등학교 졸업</option>
										<option value="2">전문대 재학</option>
										<option value="3">전문대 졸업</option>
										<option value="4">대학교 재학</option>
										<option value="5">대학교 졸업</option>
										<option value="6">대학원 재학</option>
										<option value="7">대학원 졸업</option>
									</select>
								</div>
								<br> <br> <label for="monthpicker"
									class="col-lg-2 control-label">입학년월</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text"
										class="monthpicker form-control" name="enter_date">
								</div>
								<label for="monthpicker" class="col-lg-2 control-label">졸업년월</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text"
										class="monthpicker form-control col-lg-4"
										name="graduation_date">
								</div>

								<br> <br> <label for="resume_school_name_input"
									class="col-lg-2 control-label">학교명</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text" id="resume_school_name_input"
										class="form-control col-lg-12" name="school_name">
								</div>


								<label for="resume_major" class="col-lg-2 control-label">학점</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text" id="resume_major_b_input"
										class="form-control" name="grade">
								</div>

								<br> <br> <label for="resume_major"
									class="col-lg-2 control-label">전공1</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text" id="resume_major_1_input"
										class="form-control" name="major_1">
								</div>
								<label for="resume_major" class="col-lg-2 control-label">전공2</label>
								<div class="resume_school_name_div col-lg-4">
									<input type="text" id="resume_major_2_input"
										class="form-control" name="major_2">
								</div>
							</div>
							<br> <br>
							<div id="license_wrapper" class="col-lg-12">
								<div class="license_div">
									<div class="license"></div>
								</div>
								<!-- 	<h5 id="license_add_btn btn" onclick="" class="btn-info btn col-lg-12">자격증추가</h5> -->
							</div>

							<div class="form-horizontal col-lg-12">
								<label for="resume_self_intro_cont"
									class="col-lg-12 control-label" style="text-align: left">자기소개</label>
								<textarea class="form-control col-lg-12"
									id="resume_self_intro_cont" rows="5" name="self_intro_cont"
									required=" required"></textarea>
							</div>
						</div>
						<!-- form-group -->

						<input type="button" value="확인" id="submitBtn"
							class="btn btn-primary col-lg-offset-4 col-lg-2"> <input
							type="reset" value="취소"
							class="btn btn-danger col-lg-offset-4 col-lg-2">

					</form>


				</div>
			</div>
		</div>
	</div>

</body>
</html>