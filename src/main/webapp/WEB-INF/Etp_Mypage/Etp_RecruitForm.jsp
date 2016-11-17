<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>채용공고</title>
</head>
<body>
	<form action="Etp_RecruitOk" method="get">
		<div class="form-group row">
			<label for="recruit_title" name="recruit_title" class="col-md-3 control-label">체용공고제목</label>
			<div class="col-md-9">
				<input type="text" class="form-control" id="headline" name="recruit_title" placeholder="채용제목을 입력해주세요">
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_no" class="col-md-3 control-label">기업회원번호</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">채용정보번호</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="hire_type" class="col-md-3 control-label">고용형태</label>
			<div class="col-md-9">
				<span><input name="hire_type" type="checkbox" value="정규직">정규직</span>
				<span><input name="hire_type" type="checkbox" value="계약직">계약직</span>
				<span><input name="hire_type" type="checkbox" value="인턴">인턴</span>
				<span><input name="hire_type" type="checkbox" value="파견직">파견직</span>
				<span><input name="hire_type" type="checkbox" value="도급">도급</span>
				<span><input name="hire_type" type="checkbox" value="프리랜서">프리랜서</span>
				<span><input name="hire_type" type="checkbox" value="아르바이트">아르바이트</span>
				<span><input name="hire_type" type="checkbox" value="연수생/교습생">연수생/교습생</span>
				<span><input name="hire_type" type="checkbox" value="병역특례">병역특례</span>
				<span><input name="hire_type" type="checkbox" value="위촉직/개인사업자">위촉직/개인사업자</span>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_number" class="col-md-3 control-label">모집인원</label>
			<div class="col-md-9">
				<div class="recruits_radio">
					<span><input name="recruit_number" id="free_place_radio" type="radio" value="free_place"> 
					<input type="text" name="free_place" id="free_place_text">명</span> 
					<span><input name="recruit_number" value="0" type="radio">0명</span> 
					<span> <input name="recruit_number" value="00" type="radio">00명</span> 
					<span><input name="recruit_number" value="000" type="radio">000명</span>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="salary_requirements" class="col-md-3 control-label">급여조건</label>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-4">
						<select class="form-control" name="income_qualification">
							<option value="연봉">연봉</option>
							<option value="주급">주급</option>
							<option value="월급">월급</option>
							<option value="일급">일급</option>
							<option value="건별">건별</option>
						</select>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" name="min_pay" placeholder="최소급여">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" name="max_pay" placeholder="최대급여">
					</div>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">직급/직책</label>
			<div class="col-md-9">
				<div class="position_list">
					<span><input name="recruit_position" type="checkbox" value="사원급">사원급</span> 
					<span><input name="recruit_position" type="checkbox" value="주임~대리급">주임~대리급</span>
					<span><input name="recruit_position" type="checkbox" value="팀장/매니저/실장">팀장/매니저/실장</span>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">경력사항</label>
			<div class="col-md-9" id="qualification_answer">
				<span><input name="career_check" type="checkbox" value="신입">신입</span>
				<span><input name="career_check" type="checkbox" value="경력">경력</span>
				<input type="text" name="career_period" class="form-control">년 이상 경력자
			</div>
		</div>
		<div class="form-group row">
			<label for="ac_ability_no" class="col-md-3 control-label">최종학력</label>
			<div class="col-md-9">
				<select class="form-control" name="ac_ability_no">
					<option value="no_choice">--선택--</option>
					<option value="학력무관">학력무관</option>
					<option value="초등학교졸업">초등학교졸업</option>
					<option value="중학교졸업">중학교졸업</option>
					<option value="대학교졸업(2,3년제)">대학교졸업(2,3년제)</option>
					<option value="대학교졸업(4년제)">대학교졸업(4년제)</option>
					<option value="대학원석사졸업">대학원석사졸업</option>
					<option value="대학원박사졸업">대학원박사졸업</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_field" class="col-md-3 control-label">채용분야</label>
			<div class="col-md-9">
				<select name="recruit_field">
					<option value="웹개발자">웹개발자</option>
					<option value="웹디자이너">웹디자이너</option>
					<option value="서버관리자">서버관리자</option>
					<option value="디비관리자">디비관리자</option>
					<option value="디비설계자">디비설계자</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">접수기간</label>
			<div class="col-md-9">
				<span>시작일 <input type="text" id="receive_sdate" name="receive_sdate"></span>
				<span>마감일 <input type="text" id="receive_ddate" name="receive_ddate"></span>
			</div>
		</div>
		<div class="form-group row">
			<label for="receive_way" class="col-md-3 control-label">접수방법</label>
			<div class="col-md-9">
				<span><input name="receive_way" value="우편접수" type="checkbox">우편접수</span>
				<span><input name="receive_way" value="방문접수" type="checkbox">방문접수</span>
				span><input name="receive_way" value="온라인접수" type="checkbox">온라인접수</span>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">근무지역</label>
			<div class="col-md-9">
				<div class="recruit_addr">
					<div class="row">
						<div class="col-md-3">
							<input type="text" id="sample4_postcode" name="recruit_addr"
								class="form-control" placeholder="우편번호">
						</div>
						<div class="col-md-2">
							<input type="button" name="recruit_addr"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
						</div>
						<div class="col-md-7"></div>
					</div>
					<div class="row">
						<div class="col-md-5">
							<input type="text" id="sample4_roadAddress" name="recruit_addr"
								class="form-control" placeholder="도로명주소">
						</div>
						<div class="col-md-5">
							<input type="text" id="sample4_jibunAddress" name="recruit_addr"
								class="form-control" placeholder="지번주소">
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_day" class="col-md-3 control-label">근무요일</label>
			<div class="col-md-9">
				<select class="form-control" name="recruit_day">
					<option value="no_choice">--선택--</option>
					<option value="주5일">주5일</option>
					<option value="주6일">주6일</option>
					<option value="격주휴무">격주휴무</option>
					<option value="격일근무">격일근무</option>
					<option value="협의가능">협의가능</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="ads_radio" class="col-md-3 control-label">광고여부</label>
			<div class="col-md-9">
				<div class="ads_radio">
					<span><input name="ads" value="Y" type="radio">예</span> 
					<span><input name="ads" value="N" type="radio">아니오</span>
				</div>
			</div>
		</div>
		<input type="submit" value="확인">
	</form>
</body>
</html>