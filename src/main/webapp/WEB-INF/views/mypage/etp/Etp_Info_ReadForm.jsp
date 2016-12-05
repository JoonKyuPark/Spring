<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
				<label id="etp_no" class="col-md-9">${Etp_JoinVO.etp_no}</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_name" class="col-md-3 control-label">기업이름</label>
			<div class="col-md-9">
				<label id="etp_name" class="col-md-9">${Etp_JoinVO.etp_name}</label>
			</div>
		</div>
		<div class="form-group row">
				<label for="etp_id" class="col-md-3 control-label">기업아이디</label>
			<div class="col-md-9">
				<label id="etp_id" class="col-md-9">${Etp_JoinVO.etp_id}</label>
		</div>
		</div>
		<div class="form-group row">
			<label for="etp_tel" class="col-md-3 control-label">기업전화번호</label>
			<div class="col-md-9">
				<label id="etp_id">${Etp_JoinVO.etp_tel}</label>
			</div>
		</div>
		<input type="submit" value="수정ㄱ">
	</form>
</body>
</html>