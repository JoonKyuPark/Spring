<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인재스크랩_디테일</title>
</head>
<body>
	<form action="Etp_Mem_Clip_ListForm" method="get">
		<div class="form-group row">
			<label for="responibility_field " class="col-md-3 control-label">경력담당업무</label>
			<div class="col-md-9">
				<label id="responibility_field " class="col-md-9">${Mem_Resume_ClipDTO.responibility_field}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="work_month" class="col-md-3 control-label">경력년차</label>
			<div class="col-md-9">
				<label id="work_month" class="col-md-9">${Mem_Resume_ClipDTO.work_month}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="work_rank" class="col-md-3 control-label">경력직급</label>
			<div class="col-md-9">
				<label id="work_rank" class="col-md-9">${Mem_Resume_ClipDTO.work_rank}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="career_field" class="col-md-3 control-label">경력직종</label>
			<div class="col-md-9">
				<label id="career_field" class="col-md-9">${Mem_Resume_ClipDTO.career_field}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="career_etp_name" class="col-md-3 control-label">경력회사명</label>
			<div class="col-md-9">
				<label id="career_etp_name" class="col-md-9">${Mem_Resume_ClipDTO.career_etp_name}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="join_date" class="col-md-3 control-label">입사일</label>
			<div class="col-md-9">
				<label id="join_date" class="col-md-9">${Mem_Resume_ClipDTO.join_date}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="retire_date" class="col-md-3 control-label">퇴사일</label>
			<div class="col-md-9">
				<label id="retire_date" class="col-md-9">${Mem_Resume_ClipDTO.retire_date}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="important_ability" class="col-md-3 control-label">핵심역량</label>
			<div class="col-md-9">
				<label id="important_ability" class="col-md-9">${Mem_Resume_ClipDTO.important_ability}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="RESUME_IMG" class="col-md-3 control-label">이력서사진</label>
			<div class="col-md-9">
				<label id="RESUME_IMG" class="col-md-9">${Mem_Resume_ClipDTO.RESUME_IMG}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="self_intro_cont" class="col-md-3 control-label">자기소개서내용</label>
			<div class="col-md-9">
				<label id="self_intro_cont" class="col-md-9">${Mem_Resume_ClipDTO.self_intro_cont}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="volun_field" class="col-md-3 control-label">지원분야</label>
			<div class="col-md-9">
				<label id="volun_field" class="col-md-9">${Mem_Resume_ClipDTO.volun_field}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="resume_title" class="col-md-3 control-label">이력서제목</label>
			<div class="col-md-9">
				<label id="resume_title" class="col-md-9">${Mem_Resume_ClipDTO.resume_title}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="enter_date" class="col-md-3 control-label">입학연월</label>
			<div class="col-md-9">
				<label id="enter_date" class="col-md-9">${Mem_Resume_ClipDTO.enter_date}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="graduation_date" class="col-md-3 control-label">졸업연월</label>
			<div class="col-md-9">
				<label id="graduation_date" class="col-md-9">${Mem_Resume_ClipDTO.graduation_date}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="school_name" class="col-md-3 control-label">학교명</label>
			<div class="col-md-9">
				<label id="school_name" class="col-md-9">${Mem_Resume_ClipDTO.school_name}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="major_1" class="col-md-3 control-label">전공1</label>
			<div class="col-md-9">
				<label id="major_1" class="col-md-9">${Mem_Resume_ClipDTO.major_1}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="grade" class="col-md-3 control-label">학점</label>
			<div class="col-md-9">
				<label id="grade" class="col-md-9">${Mem_Resume_ClipDTO.grade}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="member_no" class="col-md-3 control-label">개인회원번호</label>
			<div class="col-md-9">
				<label id="member_no" class="col-md-9">${Mem_Resume_ClipDTO.member_no}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="hope_income" class="col-md-3 control-label">희망연봉</label>
			<div class="col-md-9">
				<label id="hope_income" class="col-md-9">${Mem_Resume_ClipDTO.hope_income}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="resume_no" class="col-md-3 control-label">이력서번호</label>
			<div class="col-md-9">
				<label id="resume_no" class="col-md-9">${Mem_Resume_ClipDTO.resume_no}</label>
			</div>
		</div>
		<input type="submit" value="리스트ㄱㄱ">
	</form>
</body>
</html>