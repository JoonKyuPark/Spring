<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript"></script>

<title>이력서 이미지 삽입</title>

<%
int seq;
seq = Integer.parseInt(request.getParameter("seq"));
request.setAttribute("seq", seq);
System.out.println(seq);

%>
</head>
<body class='col-md-12'>
	<h3 class="bg-success col-md-12">이력서에 넣을 증명사진을 선택해주세요</h3>
	<form action="Member_Resume_ImgOk.jsp" method="post" enctype="multipart/form-data" class="col-md-12"> 
		<label class="col-md-2 label-control">사진</label>
		<div class="col-md-10">
			<input type="file" name="resume_img">
			<input type="hidden" name="resume_no" value="${seq}">
		</div>
		<div class="col-md-12">
			<input type="submit" value="확인" class="btn btn-primary col-md-offset-4 col-md-2">
			<input type="reset" value ="취소" class="btn btn-danger col-md-offset-4 col-md-2">
		</div>
	</form>
</body>
</html>