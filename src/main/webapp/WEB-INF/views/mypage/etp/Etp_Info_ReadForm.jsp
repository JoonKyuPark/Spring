<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form id="Etp_Info_ReadForm" action="Etp_Info_UpdateForm" method="get">
			<section class="well">
				<div class="form-group row" id="borderDiv">
					<div class="col-md-1"></div>
					<label for="etp_logo" class="col-md-2 control-label">로고</label>
					<div class="col-md-9">
						<img class="img-thumbnail"
							src="displayFile?fileName=${Etp_JoinVO.etp_image}" width="133px"
							height="150px">
					</div>
				</div>
				<div class="form-group row" id="borderDiv">
					<div class="col-md-1"></div>
					<label for="etp_no" class="col-md-2 control-label">기업회원번호</label>
					<div class="col-md-9">
						<label id="etp_no" class="col-md-9">${Etp_JoinVO.etp_no}</label>
					</div>
				</div>
				<div class="form-group row" id="borderDiv">
					<div class="col-md-1"></div>
					<label for="etp_name" class="col-md-2 control-label">기업이름</label>
					<div class="col-md-9">
						<label id="etp_name" class="col-md-9">${Etp_JoinVO.etp_name}</label>
					</div>
				</div>
				<div class="form-group row" id="borderDiv">
					<div class="col-md-1"></div>
					<label for="etp_id" class="col-md-2 control-label">기업아이디</label>
					<div class="col-md-9">
						<label id="etp_id" class="col-md-9">${Etp_JoinVO.etp_id}</label>
					</div>
				</div>
				<div class="form-group row" id="borderDiv">
					<div class="col-md-1"></div>
					<label for="etp_tel" class="col-md-2 control-label">기업전화번호</label>
					<div class="col-md-9">
						<label id="etp_id">${Etp_JoinVO.etp_tel}</label>
					</div>
				</div>
				<input class="btn btn-success" type="submit" value="확인">
			</section>
		</form>
	</div>
</body>
</html>