<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<style type="text/css">
#headlind{
	border-bottom: 0.5px solid;
	border-top-color: gray;
	padding-bottom:20px;
	padding-top:20px;
	margin-bottom: 20px; 
	margin-top: 20px;
} 
#a{
	border-bottom: 0.5px solid;
	border-top-color: gray;
	padding-bottom:20px;
	padding-top:20px;
	margin-bottom: 20px; 
	margin-top: 20px;
}
</style>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javasript"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_jibunAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
					}
				}).open();
	}

	$(function() {
		$("form#ETP_recruit_insert_form").on("submit", function() {
			$("#free_place_radio").val($("#free_place_text"));

		});

		$("select#etp_email_select").on("change", function() {
			$("input#etp_email").val($(this).val());
		});

		$("input#etp_email").on("click", function() {
			$(this).val("");
		});

		$("button#modifyButton").on("click", function() {
			$("form#actionForm").attr("action", "Etp_Info_UpdateForm.jsp");
			$("form#actionForm").submit();
		});
	});
</script>

</head>
<body>
<%-- <%@include file="Etp_Info_nav.jsp"%> --%>
	<form action="Etp_Info_UpdateForm" method="post">
	<h3 id="a">기업정보수정</h3>
	<div id="headlind">
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_no" class="col-md-2 control-label">로고</label>
			<div class="col-md-9">
				<img src="displayFile?fileName=${Etp_JoinDTO.etp_image}" width="133px" height="150px"/>
				<a href="Etp_Info_Logo?etp_no=${Etp_JoinDTO.etp_no}">로고수정</a>
			</div>
		</div>
		</div>
		<div id="headlind">
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_no" class="col-md-2 control-label">기업회원번호</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">${Etp_JoinDTO.etp_no }</label>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_name" class="col-md-2 control-label">기업이름</label>
			<div>
				<label id="etp_name" class="col-md-9">${Etp_JoinDTO.etp_name}</label>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<div class="col-md-2 control-label">
				<label for="etp_id">기업아이디</label>
			</div>
			<div class="col-md-9">
				<label id="etp_id">${Etp_JoinDTO.etp_id}</label>
			</div>
		</div>
		</div>
		<div id="headlind">
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_tel_location" class="col-md-2 control-label">기업전화번호</label>
			<div class="col-md-4">
				<select class="form-control" name="etp_tel_location"
					id="etp_tel_location">
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="041">041</option>
					<option value="042">042</option>
				</select>
			</div>
			<div class="col-md-5">
				<input type="text" class="form-control" name="etp_tel" id="etp_tel_location">
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_email_id" class="col-md-2 control-label">기업이메일</label>
			<div class="col-md-3">
				<input type="text" class="form-control" name="etp_email_id"
					id="etp_email_id" placeholder="아이디">
			</div>
			<div class="col-md-3">
				<input type="text" class="form-control" name="etp_email"
					id="etp_email" placeholder="이메일주소">
			</div>
			<div class="col-md-3">
				<select class="form-control" name="etp_email_select"
					id="etp_email_select">
					<option value="naver.com">naver.com</option>
					<option value="nate.com">nate.com</option>
					<option value="daum.net">daum.net</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="직접입력">직접입력</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_kind" class="col-md-2 control-label">기업형태</label>
			<div class="col-md-9">
				<select class="form-control" name="etp_kind" id="etp_kind">
					<option value="중소기업">중소기업(300명이하)</option>
					<option value="중견기업">중견기업(300명이상)</option>
					<option value="대기업">대기업</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_registration_num" class="col-md-2 control-label">사업자등록번호</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="etp_registration_num" placeholder="사업자등록번호" id="etp_registration_num">
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="delegator_name" class="col-md-2 control-label">대표자명</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="delegator_name"
					placeholder="대표자명" id="delegator_name">
			</div>
		</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="etp_field" class="col-md-2 control-label">기업업종(산업내용)</label>
			<div class="col-md-9">
				<select class="form-control" name="etp_field" id="etp_field">
					<option value="IT">IT</option>
					<option value="웹">웹</option>
					<option value="자바개발자">자바개발자</option>
					<option value="디비관리자">디비관리자</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label for="employee_number" class="col-md-2 control-label">직원수</label>
			<div class="col-md-8">
				<input type="text" class="form-control" name="employee_number" id="employee_number">
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="form-group row">
		<div class="col-md-1"></div>
			<label class="col-md-2 control-label">기업주소</label>
			<div class="row">
				<div class="col-md-3">
					<input type="text" id="sample4_postcode" name="recruit_addr"
						class="form-control" placeholder="우편번호">
				</div>
				<div class="col-md-2">
					<input type="button" name="etp_location"
						onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<div class="col-md-7"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-4">
					<input type="text" id="sample4_roadAddress" name="etp_location"
						class="form-control" placeholder="도로명주소">
				</div>
				<div class="col-md-4">
					<input type="text" id="sample4_jibunAddress" name="etp_location"
						class="form-control" placeholder="지번주소">
				</div>
			</div>
		</div>
		<div class="form-group">
		<div class="col-md-1"></div>
			<label for="etp_capital" class="col-md-2 control-label">자본금</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="etp_capital" placeholder="자본금" id="etp_capital">
			</div>
			<!-- <div class="nol-md-5">만원</div> -->
		</div>
		<div class="form-group">
		<div class="col-md-1"></div>
			<label for="etp_sales" class="col-md-2 control-label">매출액</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="etp_sales"
					placeholder="매출액" id="etp_sales">
			</div>
		</div>
		<div class="form-group">
		<div class="col-md-1"></div>
			<label for="clip_number" class="col-md-2 control-label">관심인원</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="clip_number"
					placeholder="괸심인원" id="clip_number">
			</div>
		</div>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<input class="btn btn-success" type="submit" value="확인">
			</div>
			<div class="col-md-5"></div>
		</div>
	</form>
</body>
</html>