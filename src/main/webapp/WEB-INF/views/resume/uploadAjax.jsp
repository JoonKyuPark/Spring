<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/filebox.js"></script>



<script type="text/javascript"
	src="../../../resources/css/resume/bootstrap/js/alertify.min.js"></script>




<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">



<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/font-awesome.css">

<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/resume.css">

<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/alertify.core.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/alertify.default.css">

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

	<h3>Ajax File upload</h3>
	<div class="fileDrop"></div>
	<div class="uploadedList"></div>

	<div class="container_id"></div>
	<div id="boxBtn">
		<button id="newFolder" class="btn btn-success"
			onclick="createFolder()">폴더생성</button>

	</div>
	<div id="box"></div>
</body>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</html>