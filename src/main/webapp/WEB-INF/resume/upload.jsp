<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[FileBox]사진 선택</title>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="../../../resources/css/resume/bootstrap/js/filebox.js"></script>



<script type="text/javascript" src="../../../resources/css/resume/bootstrap/js/alertify.min.js"></script>




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">



<link rel="stylesheet" type="text/css" href="../../../resources/css/resume/bootstrap/css/font-awesome.css">

<link rel="stylesheet" type="text/css" href="../../../resources/css/resume/bootstrap/css/resume.css">

<link rel="stylesheet" type="text/css" href="../../../resources/css/resume/bootstrap/css/alertify.core.css">
<link rel="stylesheet" type="text/css" href="../../../resources/css/resume/bootstrap/css/alertify.default.css">

<style type="text/css">
.fileDrop {
	width: 100%;
	height: 200px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
</style>



</head>
<body>

	<h3>[FileBox]이력서 사진 선택</h3>
	<h5>현재 경로 : <span id="nowHeader"></span></h5>
	<div id="rootView" class="col-md-2">
		<ul id = "rootUl">
		
		</ul>
	
	</div>
	<div id="box" class="col-md-7"></div>
	<div id="boxButtons" class="col-md-3">
		<h3>아래 박스에 파일을 Drag해주세요</h3>

		<div class="fileDrop col-md-12"></div>
		<div id="boxBtn" class="col-md-12">
			<input type="button" id="newFolder" class="btn btn-large btn-success col-md-12" onclick="createFolder()" value="폴더생성">
		</div>
		<div id="uploadButtons" class="col-md-12">
			<input type="button" id="submitBtn" value="확인" class="btn btn-large btn-primary col-md-12">
			<input type="button" id="closeBtn" value="취소" class="btn btn-large btn-danger col-md-12">
		</div>
	</div>

</body>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</html>