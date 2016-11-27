<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Etp_Info_UpdateForm" method="get">
		<div class="form-group row">
			<label for="etp_no" class="col-md-3 control-label">로고</label>
			<div class="col-md-9">
				<input type="text"	width="333px" height="250px" placeholder="이미지"/>
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_no" class="col-md-3 control-label">기업회원번호</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_name" class="col-md-3 control-label">기업이름</label>
			<div>
				<label id="etp_name" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-md-4">
				<label for="etp_id">기업아이디</label>
			</div>
			<div class="col-md-8">
				<label id="etp_id">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_tel" class="col-md-3">기업전화번호</label>
			<div class="col-md-9">
				<label id="etp_id">${Etp_JoinVO.etp_tel}</label>
			</div>
		</div>
		<input type="submit" value="수정ㄱ">
	</form>
</body>
</html>